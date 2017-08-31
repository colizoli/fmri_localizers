%% MT Localizer
% O. Colizoli, June 2015
% Dot motion code adapted from A. Urai

% ABAB 10 s Blocked Design
% A = 0% coherence
% B = 100% coherence
% AB BA order counter balanced between sessions
% Task for participant: press a button when the fixation cross turns green
% Bold baseline period at the beginning and end of each run

% Output file
%     results.timing.blocks(block,1:5) = [block, flip.block.StimOns(1, block), flip.block.StimOns(1, block)-BEGIN, dots.coherence(block), dots.direction(block)];

close all; clear all; clc; dbstop if error;

%% SETUP
setup.scanner      = 1;  % 1 = Roeterseiland, 2 = 7T AMC, 3 = 3T AMC (4 = O' Big Mac, 5 = O's laptop, 6 = lab 2.19)
setup.Eye          = false;
setup.fmri         = false;
setup.TR           = 2;  % to calculate frames for fmri mode (waiting for trigger to proceed)
setup.cancel       = false;
setup.debug        = true;

%-------------
% Ask for subject number, default = 0
%-------------
setup.participant       = input('Participant number? ');
if isempty(setup.participant)
    setup.participant   = 100; %test
end
%-------------
% Ask for session number, default = 0
%-------------
setup.session       = input('Session? ');
if isempty(setup.session)
    setup.session   = 0; %test
end
%-------------
% Ask for fmri run number, default = 0
%-------------
setup.run           = input('Run? ');
if isempty(setup.run)
    setup.run       = 0;
end
%-------------
% window1 settings
%-------------
window1.dist            = 50; % distance to screen in centimeters
window1.width           = 20; % width of screen in centimeters

window1.skipChecks      = 0;
[window1, audio]        = SetupPTB(window1, setup); %load all the psychtoolbox things


%-------------
% Present loading text on the screen
%-------------
Screen('TextSize', window1.h, 15);
Screen('TextFont', window1.h, 'Trebuchet');
Screen('TextColor', window1.h, [255 255 255] );
Screen('DrawText', window1.h, 'Loading...', window1.center(1), window1.center(2));
Screen('Flip', window1.h);

%-------------
% INITIALIZE EXPERIMENTAL PARAMETERS
%-------------
setup.cohlevels     = [1 0]; % Block A with 100% motion coherence, Block B with 0% motion coherence                              
setup.nconditions   = 2; % Number of conditions = A, B
setup.degrees       = [0 45 90 135 180 225 270 315]; % 4 cardinal directions and 4 diagonals
setup.ndegrees      = length(setup.degrees); % number of directions
setup.reps          = 2; % Repetitions per condition
setup.nblocks       = setup.nconditions*length(setup.degrees)*setup.reps; % Number of blocks for the whole localizer
setup.tblocks       = 10; % Duration per block in seconds (must be more than 2 s)
setup.boldbase      = 12; % for fmri, the seconds of pre and post localizer for BOLD baseline
setup.nframes       = ceil(setup.tblocks * window1.frameRate); %number of frames the stimulus is displayed per block
setup.countersubj   = mod(setup.participant,2); % alternates even, odd for participant numbers in order 1:N [ 0 1 ]
setup.countersess   = mod(setup.session,2);

% counter balance 0% and 100% order between subjects and sessions
if setup.countersubj
   setup.cohlevels = fliplr(setup.cohlevels); % Flip 0% and 100% order                             
end

if setup.countersess
    setup.cohlevels = fliplr(setup.cohlevels); % Flip 0% and 100% order                               
end

% Determine when to change the fix cross (equally across both conditions)
N = randperm(length(setup.degrees)*setup.reps);
A = N(1:floor(length(N)/2));
C1 = zeros(1,length(setup.degrees)*setup.reps);
C1(A) = 1;
N = randperm(length(setup.degrees)*setup.reps);
B = N(1:floor(length(N)/2));
C2 = zeros(1,length(setup.degrees)*setup.reps);
C2(B) = 1;
setup.fixchange = [C1; C2];
setup.fixtime   = randi(setup.tblocks-2, [setup.nconditions length(setup.degrees)*setup.reps]);

% store timing results
results.timing.blocks      = NaN(setup.nblocks,5); % block, GetSecs, GetSecs-BEGIN, coherence, direction
% store response info (GetFirstPresses.m)
results.firstPress         = cell(1,100000);
counter                    = 1; % to count responses and log them
pressed                    = 0;

%-------------
% fixation cross colors for feedback
%-------------
white   = [255,255,255];
red     = [255,0,0];
green   = [0,255,0];
yellow  = [255,246,0];
% black   = [0 0 0];
% grey    = [118 118 118];
% flip grey/black names only!
grey   = [0 0 0];
black    = [118 118 118];
color   = white; %fixation cross white

% FIXATION
fix.dotsize        = deg2pix(window1,0.2); % fixation dot
fix.circlesize     = deg2pix(window1,0.6); % circle around fixation dot

fix.color1         = [0 0 0];  % outside and color for Anne's fix cross
fix.color2         = [118 118 118]; % inside
fix.flip           = 0;

% preallocate a full flip structure to store the output of every dynamic flip
flip.block.VBL        = nan(ceil(setup.tblocks * window1.frameRate), setup.nblocks);
flip.block.StimOns    = flip.block.VBL;
flip.block.FlipTS     = flip.block.VBL;
flip.block.Missed     = flip.block.VBL;
flip.block.beampos    = flip.block.VBL;

flip.bold1.VBL        = nan(1, 1);
flip.bold1.StimOns    = flip.bold1.VBL;
flip.bold1.FlipTS     = flip.bold1.VBL;
flip.bold1.Missed     = flip.bold1.VBL;
flip.bold1.beampos    = flip.bold1.VBL;

flip.bold2.VBL        = nan(1, 1);
flip.bold2.StimOns    = flip.bold2.VBL;
flip.bold2.FlipTS     = flip.bold2.VBL;
flip.bold2.Missed     = flip.bold2.VBL;
flip.bold2.beampos    = flip.bold2.VBL;

% Preallocate dots structure
% ALL SIZES ARE HERE IN DEGREES!
% while the dots structure output is given in # of pixels
dots               = struct; %preallocate
% parameters that stay constant
dots.radius        = deg2pix(window1, 8.4); % keep constant, Anne had 12 degrees
dots.innerspace    = deg2pix(window1, 1.2); % Anne had 2 degrees
dots.lifetime      = 10; % in frames
dots.nvar          = 1; %interleave variants of the stimulus
dots.color         = [255 255 255]; % always 100% dot contrast

% determine the appearance of the dots - as in Siegel, 2007
dots.speed         = deg2pix(window1, 7.5); % speed of the dots in degrees/second
dots.size          = deg2pix(window1, 0.15); %size of each dot in degrees
dots.density       = 2.37; % dot density in dots per degree^2
dots.nDots         = round(dots.density*pi*pix2deg(window1, dots.radius)^2); 
%number of dots in the circle, calculated from density (can also just be a fixed nr, eg. 500)

% Determine which direction on each block
dots.direction     = repmat(setup.degrees, [setup.nconditions setup.reps]); 
% Rows are conditions AB and columns blocks per condition (16)
for i = 1:size(dots.direction,1) % shuffle per row
    dots.direction(i,:) = dots.direction(i,randperm(size(dots.direction,2)));  
end

% coherence level arrays
for i = 1:setup.nconditions
    dots.coherence(i,:)    = ones(1,length(setup.degrees)*setup.reps)*setup.cohlevels(i);
end

%% -------------
% INITIALIZE DOT COORDINATES
%-------------
stim = nan(1, setup.nblocks, setup.nframes, 2, dots.nDots);
for block = 1 : setup.nblocks,
        %-------------
        % Preload all the dot coordinates before starting the trial
        %-------------
        
    NVAR        = dots.nvar; % interleaved sequence
    LIFETIME    = dots.lifetime;
    NDOTS       = dots.nDots; % 774, 3097
    DIRECTION   = dots.direction(block); % it counts column wise, so will alternate conditions
    SPEED       = dots.speed; % downward, as a function of speed (in degrees per second) and framerate)
    NFR         = ceil(setup.nframes/NVAR);
    RADIUS      = dots.radius;
    INNER       = dots.innerspace; %inner circle doesn't contain dots
    COH         = dots.coherence(block); % it counts column wise, so will alternate conditions

    % generate random starting points within a circular aperture
    rad     = RADIUS*sqrt(rand(NDOTS,1));
    theta   = 2*pi*rand(NDOTS,1);
    pos     = [rad.*cos(theta) rad.*sin(theta)]; %convert to caretesian coordinates
    
    % assign each dot a scalar that indicates how long it has been
    % 'alive' (that is, a signal dot)
    % Each dot will have a integer value 'life' which is how many frames the
    % dot has been going.  The starting 'life' of each dot will be a random
    % number between 0 and dots.lifetime-1 so that they don't all 'die' on the
    % same frame:
    
    life    = ceil(rand(1,NDOTS)*LIFETIME);
    
    for frameNum = 1:NFR,
        
        % define the noise dots
        noisedots           = round(NDOTS*(1-COH)); %nr of noisedots based on the coherence
        t1                  = rand(NDOTS,1);
        [t1,t2]             = sort(t1);
        noiseindex          = t2(1:noisedots); %random subset of dots
        % define signal dots
        signalindex         = t2(noisedots+1:end); %the dots that are signal
        
        % move signal dots with a certain speed in the right direction
        pos(signalindex,:)  = [SPEED.*cos(-DIRECTION*pi/180)/window1.frameRate+pos(signalindex,1), ...
            SPEED.*sin(-DIRECTION*pi/180)/window1.frameRate+pos(signalindex,2)]; %convert to cartesian coordinates
        
        % replot the noisedots somewhere in the aperture
        rad                 = RADIUS*sqrt(rand(noisedots,1));
        theta               = 2*pi*rand(noisedots,1);
        pos(noiseindex,:)   = [rad.*cos(theta) rad.*sin(theta)]; %convert to cartesian coordinates
        
        %increment the 'life' of each dot
        life                = life+1;
        
        %find the 'dead' dots
        deadindex           = mod(life,LIFETIME)==0;
        deaddots            = length(find(deadindex==1));
        
        %replace the positions of the dead dots to a random location
        rad                 = RADIUS*sqrt(rand(deaddots,1));
        theta               = 2*pi*rand(deaddots,1);
        pos(deadindex,:)    = [rad.*cos(theta) rad.*sin(theta)]; %convert to cartesian coordinates
        
        %find the dots that have left the aperture
        outindex            = find(sqrt((pos(:,1).^2)+(pos(:,2).^2)) >= RADIUS); %index dots that are outside the aperture
        % wrap them around in the direction where they came from
        [theta, rad]        = cart2pol(pos(outindex, 1), pos(outindex,2));
        theta               = theta + pi; %move to the other side of the circle
        rad                 = RADIUS*ones(length(rad),1);
        pos(outindex, :)    = [rad.*cos(theta) rad.*sin(theta)]; %move back to the top, only change y coordinate
        
        %find the dots that are too close to the fixation
        innerindex          = find(sqrt((pos(:,1).^2)+(pos(:,2).^2)) <= INNER);
        [theta, rad]        = cart2pol(pos(innerindex, 1), pos(innerindex, 2));
        rad                 = INNER + (RADIUS - INNER)*sqrt(rand(length(innerindex),1)); %random radius
        theta               = theta + pi;
        pos(innerindex, :)  = [rad.*cos(theta) rad.*sin(theta)]; %move back to the top, only change y coordinate
        
        % save the positions per variant
        temp{NVAR,frameNum}  = pos';
    end
        
    % this is not the most elegant code, but is used to interleave the multiple variants of the stimulus created
    for frame = 1:NFR,
        stimuli(frame, :, :) = temp{frame};
    end

    stim(1, block, :, :, :) = stimuli;
      
        % Loading 
        if ~ isempty(Screen('windows')), %if there is a window1 open
            Screen('DrawText',window1.h, sprintf('Loading %d percent', ...
                round(sub2ind([1 setup.nblocks ], 1, block)/setup.nblocks*100)), ...
                window1.center(1), window1.center(2));
            Screen('Flip', window1.h);
        end
end  % end initialize blocks


%% -------------
% Initialize EyeLink
%-------------
if setup.Eye == true
    setup.localizer = true;
    edfFile = ELconfig(window1, setup, setup.run);
    Eyelink ('Message', sprintf('EyeLink configured at %d', GetSecs));
    Eyelink('command', 'sample_rate = %d',1000);
    Eyelink('command', 'calibration_type = HV5');
    % you must send this command with value NO for custom calibration
    % you must also reset it to YES for subsequent experiments
    Eyelink('command', 'generate_default_targets = NO');
end 
%% -------------
% OUTPUT FILE
%-------------
% Get Time Stamp
setup.datetime = datestr(now, 'yyyy-mm-dd_HH-MM-SS');
setup.filename = sprintf('Subject_%d_s%d_r%d_%s',setup.participant, setup.session, setup.run , setup.datetime); % name of output file
textfile = [setup.filename '.txt'];
fid = fopen(textfile,'w');

%% -------------
% INSTRUCTIONS
%-------------
% Lab keys: left 'z', right 'm'
% fmri keys: left 'e' right 'b'
%-------------

%Screen('FillRect', window1.h, window1.black);
Screen('FillRect', window1.h, [118 118 118]);

DrawFormattedText(window1.h, ...
    ['Push with your RIGHT index finger as soon as you see the fixation region change to green. \n \n '...
    'ALWAYS KEEP LOOKING AT THE FIXATION REGION!'], window1.center(1)-300,window1.center(2));
Screen('Flip', window1.h);

WaitSecs(setup.TR*2);

%% -------------
% WAIT FOR FIRST PULSE TO START
% ---------------

if setup.fmri 
    % First pulse timing
    BEGIN = KbTriggerWait(KbName('t'));
else 
    BEGIN = GetSecs;
end

if setup.Eye
    Eyelink ('Message', sprintf('measuring started at %d', BEGIN));           
end

results.timing.start = BEGIN; %will be first pulse if in fmri mode

%% -------------
% BOLD BASELINE 1
%-------------
% START with an epoch of BOLD baseline
% Show only fixation cross
%-------------           
TimingCnt = GetSecs + window1.frameDur - window1.slack;

if setup.Eye
    Eyelink ('Message', sprintf('block -1 started at %d', GetSecs));
end
fprintf('block -1 started at %d \n', GetSecs-BEGIN);
results.timing.bold1start = GetSecs-BEGIN;

window1      = drawFixation(window1, dots, fix); % fixation
Screen('DrawingFinished', window1.h); % helps with managing the flip performance
         
            [flip.bold1.VBL(1, 1), ...
                flip.bold1.StimOns(1, 1), ...
                flip.bold1.FlipTS(1, 1), ...
                flip.bold1.Missed(1, 1), ...
                flip.bold1.beampos(1, 1)] = Screen('Flip', window1.h);
            
WaitSecs(setup.boldbase);
        
if setup.Eye
    Eyelink ('Message', sprintf('block -1 ended at %d', GetSecs));           
end
fprintf('block -1 ended at %d \n', GetSecs-BEGIN);
results.timing.bold1end = GetSecs-BEGIN;


%% -------------
% LOOP OVER BLOCKS
% -------------

TimingCnt = GetSecs + window1.frameDur - window1.slack;

% Only check the following keys
KbQueueCreate;
keysOfInterest=zeros(1,256);
keysOfInterest(KbName({'b','e'}))=1;
KbQueueCreate(-1, keysOfInterest);
KbQueueStart;      

for block = 1 : setup.nblocks
     %-------------
     % Dot motion
     %-------------           
     if setup.Eye 
        Eyelink ('Message', sprintf('block %i started at %d', block, GetSecs));
     end
     fprintf('block %i started at %d \n', block, GetSecs-BEGIN);        
        
     fix.color1 = grey; fix.color2 = black;
     %-------------
     % Loop stimuli over frames
     %-------------
     for frameNum = 1:setup.nframes
        % if a fix change block, turn green
        if setup.fixchange(block)
            if frameNum == floor(window1.frameRate*setup.fixtime(block))
                fix.color1 = green; fix.color2 = green;
            elseif frameNum > window1.frameRate*setup.fixtime(block)+15
                fix.color1 = grey; fix.color2 = black;
            end
        end
        %-------------
        % Draw all dots at once
        %-------------
        window1  = drawAllDots(window1, dots, 1, block, stim, frameNum);            
        window1  = drawFixation(window1, dots, fix); % fixation

        Screen('DrawingFinished', window1.h); % helps with managing the flip performance
            
            [flip.block.VBL(frameNum, block), ...
                flip.block.StimOns(frameNum, block), ...
                flip.block.FlipTS(frameNum, block), ...
                flip.block.Missed(frameNum, block), ...
                flip.block.beampos(frameNum, block)] = Screen('Flip', window1.h, TimingCnt);
            TimingCnt = flip.block.VBL(frameNum, block) + window1.frameDur - window1.slack; 
        %-------------
        % Check for pulses/key presses and log them
        %-------------       
        [ pressed, results.firstPress{counter} ] = KbQueueCheck; % Collect keyboard events since KbQueueStart was invoked
        counter = counter + 1;
        
        if setup.Eye && pressed
            Eyelink ('Message', sprintf('response at %d', GetSecs));
            fprintf('response at %d \n', GetSecs-BEGIN);
        end

     end % frames           
     
     % log block info for output
     results.timing.blocks(block,1:5) = [block, flip.block.StimOns(1, block), flip.block.StimOns(1, block)-BEGIN, dots.coherence(block), dots.direction(block)];
     dlmwrite(textfile,results.timing.blocks,'\t');    
     %-------------
     % Send EyeLink trial info
     %-------------       
     if setup.Eye
        Eyelink ('Message', sprintf('block %i parameter coherence %d ', block, dots.coherence(block)));   WaitSecs(.0005);
        Eyelink ('Message', sprintf('block %i parameter direction %d ', block, dots.direction(block)));   WaitSecs(.0005);
     end
        
end % loop over blocks
KbQueueStop;    
KbQueueRelease;

%% -------------
% BOLD BASELINE 2
% -------------

if setup.Eye
    Eyelink ('Message', sprintf('block -2 started at %d', GetSecs));
end
fprintf('block -2 started at %d \n', GetSecs-BEGIN);
results.timing.bold2start = GetSecs-BEGIN;

window1      = drawFixation(window1, dots, fix); % fixation
Screen('DrawingFinished', window1.h); % helps with managing the flip performance
         
            [flip.bold2.VBL(1, 1), ...
                flip.bold2.StimOns(1, 1), ...
                flip.bold2.FlipTS(1, 1), ...
                flip.bold2.Missed(1, 1), ...
                flip.bold2.beampos(1, 1)] = Screen('Flip', window1.h);            
            
WaitSecs(setup.boldbase);

if setup.Eye
    Eyelink ('Message', sprintf('block -2 ended at %d', GetSecs));           
end
fprintf('block -2 ended at %d \n', GetSecs-BEGIN);
results.timing.bold2end = GetSecs-BEGIN;

%% -------------
% END LOCALIZER & SAVE DATA
% -------------

ENDED = GetSecs;

%-------------
% End of pupil time course
%-------------
if setup.Eye
    Eyelink ('Message', sprintf('measuring ended at %d', GetSecs));           
end
    
results.timing.end = ENDED; %end of experiment
    
%-------------
% Exit gracefully
%-------------
disp('done!');
Screen('CloseAll'); ShowCursor;
sca;
    
% save the EL file for this block
if setup.Eye == true,
   %  fprintf('Receiving data file ''%s''\n', edfFile );
    eyefilename         = sprintf('P%d_s%d_r%d.edf', setup.participant, setup.session, setup.run);
    setup.eyefilename   = ['Subject_' num2str(setup.participant) '_'  setup.datetime '/' eyefilename];
    Eyelink('command', 'generate_default_targets = YES');
    Eyelink('Command', 'set_idle_mode');
    WaitSecs(0.5);
    Eyelink('CloseFile');
    Eyelink('WaitForModeReady', 500);
    try
        status              = Eyelink('ReceiveFile', edfFile, setup.eyefilename); %this collects the file from the eyelink
        disp(status);
        disp(['File ' setup.eyefilename ' saved to disk']);
    catch
        warning(['File ' setup.eyefilename ' not saved to disk']);
    end
    % Close EyeLink
    Eyelink('StopRecording');
end
      
%-------------
% Break out of all trials if ESC was pressed
%-------------
if setup.cancel,
    break
    warning('experiment was manually terminated');
end
    
%-------------
% OUTPUT FILES
%-------------
if ~setup.debug
    % Create subject specific file and save - add unique datestring to avoid any overwriting of files
    save([setup.filename '.mat'], '-mat', 'setup', 'window1', 'stim', 'dots', 'fix', 'results', 'flip');
end
fclose(fid);




