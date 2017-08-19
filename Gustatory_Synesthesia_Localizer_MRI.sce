########################################################
# Sounds -> Synesthesia - blocked fMRI				   #
# O. Colizoli, 2012									   #
# Universiteit van Amsterdam (Dept. Psych.)			   #									      						
# 													   #
# Presentation SCE file 		                       #
# blocked fMRI - ABCDABCD			                   #
# 16 seconds active, 16 sec baseline (fixation cross)  #
# 4 conditions:                                        #
# Dutch words spoken                                   #
# Foreign words spoken                                 #
# Musical instruments                                  #
# Daily environmental sounds                           #
# Instructions - passive viewing, maintain fixation    #                             
# 4 conditions x 5 blocks = 20 blocks total            #
# 16 images per block x 5 blocks per condition         #
########################################################

scenario = "Gustatory_Synesthesia_Localizer_MRI";

default_background_color = 0, 0, 0; 
default_font = "courier new";
default_font_size = 60;
default_text_color = 255,255,255;
response_matching = simple_matching;
response_logging = log_all;
active_buttons = 8;
button_codes = 1,2,3,4,5,6,7,8;

scenario_type = fMRI_emulation;
scan_period = 2000;   # (ms) only here to make emulation possible if desired
#scenario_type = fMRI;
pulses_per_scan = 1;
pulse_code = 255;

begin;

################ STIMULUS DEFINITIONS ################

array{ #spoken words dutch													
sound { wavefile { filename = "Dutch_news1.wav";};  description = "DutchNews1"; } dutch_spoken1; #1
sound { wavefile { filename = "Dutch_news2.wav";};  description = "DutchNews2"; } dutch_spoken2; #2
sound { wavefile { filename = "Dutch_news3.wav";};  description = "DutchNews3"; } dutch_spoken3; #3
sound { wavefile { filename = "Dutch_news4.wav";};  description = "DutchNews4"; } dutch_spoken4; #4
sound { wavefile { filename = "Dutch_news5.wav";};  description = "DutchNews5"; } dutch_spoken5; #5
} spoken_dutch;

array{ #spoken words dutch													
sound { wavefile { filename = "Turkish_news1.wav";};  description = "TurkishNews1"; } foreign_spoken1; #1
sound { wavefile { filename = "Turkish_news2.wav";};  description = "TurkishNews2"; } foreign_spoken2; #2
sound { wavefile { filename = "Turkish_news3.wav";};  description = "TurkishNews3"; } foreign_spoken3; #3
sound { wavefile { filename = "Russian_news1.wav";};  description = "RussianNews1"; } foreign_spoken4; #4
sound { wavefile { filename = "Russian_news2.wav";};  description = "RussianNews2"; } foreign_spoken5; #5
} spoken_foreign;

array{ # 10 musical instruments														
sound { wavefile { filename = "Doedelzak fragment.wav";};  description = "bagpipe"; } music1; #1
sound { wavefile { filename = "Drums fragment.wav";};  description = "drums"; } music2; #2
sound { wavefile { filename = "Gitaar fragment.wav";}; description = "guitar"; } music3; #3
sound { wavefile { filename = "Hobo fragment.wav";}; description = "oboe"; } music4; #4
sound { wavefile { filename = "Trompet fragment.wav";}; description = "trumpet"; } music5; #5
sound { wavefile { filename = "triangel.wav";}; description = "triangle"; } music6; #6
sound { wavefile { filename = "accordeon.wav";}; description = "accordian"; } music7; #7
sound { wavefile { filename = "trommels.wav";}; description = "drumline"; } music8; #8
sound { wavefile { filename = "mondharmonica.wav";}; description = "harmonica"; } music9; #9
sound { wavefile { filename = "xylofoon.wav";}; description = "xylophone"; } music10; #10
} music;

array{ # 80 words														
sound { wavefile { filename = "Applause.wav";};  description = "applause"; } noise1; #1
sound { wavefile { filename = "Rain.wav";};  description = "rain"; } noise2; #2
sound { wavefile { filename = "Siren.wav";}; description = "siren"; } noise3; #3
sound { wavefile { filename = "wind.wav";}; description = "wind"; } noise4; #4
sound { wavefile { filename = "electric_fan.wav";}; description = "electric_fan"; } noise5; #5
sound { wavefile { filename = "pckeyboard.wav";}; description = "keyboard"; } noise6; #6
sound { wavefile { filename = "typewriter.wav";}; description = "typewriter"; } noise7; #7
sound { wavefile { filename = "race_car.wav";}; description = "race_car"; } noise8; #8
} noise;

													
picture { description = "rest"; text {caption = "+"; font_size = 30; font = "Times New Roman";}; x = 0; y = 0; } rest; 

#Instructions for participants
picture { text {caption = "You will hear a series of words and sounds.

Please keep your eyes closed during this entire scan.

The experiment will start at any moment.
Make sure that you stay still and close your eyes! "; 
font_size = 24; font = "Times New Roman";
}; x = 0; y = 0; } startTrialPicture; 

# Blank and fixation screens
picture {background_color = 0,0,0;} white_screen; 
picture {text {caption = "+";  font_size=30; font = "Times New Roman";} fix_text; x = 0; y = 0; }  pic_fix;


############ Start fMRI Trial ####################
trial {   
   picture startTrialPicture;
   time = 0;       
   duration = next_picture;
   picture startTrialPicture;
   mri_pulse = 1;   
   duration = 1000;                    
} startTrial;


################# Spoken language Trial ################################
trial {
		all_responses = false;	           # Does not log all responses, only those during active events # 
		trial_duration = 15995;
		trial_type = fixed;				 
								
	stimulus_event {						               
					sound music1; 
					time = 0;
					duration = 15995; # 16 seconds
					response_active = true;
					}spoken_event;
					
} spoken_trial;

################# Music Trial ################################
trial {
		all_responses = false;
		trial_duration = 7995; # Does not log all responses, only those during active events # 
		trial_type = fixed;				 
								
	stimulus_event {						               
					sound music1; 
					time = 0;
					duration = 7995; # 8 seconds
					response_active = true;
					}music_event;
										
} music_trial;

################# Noise Trial ################################
trial {
		all_responses = false;	           # Does not log all responses, only those during active events # 
		trial_duration = 1995;
		trial_type = fixed;				 
								
	stimulus_event {						               
					sound music1; 
					time = 0;
					duration = 1995; # 2 seconds
					response_active = true;
					}noise_event;
										
} noise_trial;

################# Baseline ################################
trial {
		all_responses = false;	           # Does not log all responses, only those during active events # 
		trial_type = fixed;					 
					
	stimulus_event {						               
					picture white_screen;
					time = 0;
					duration = 15995;
					code = "rest";
					response_active = false;
					}rest_event;
					
} rest_trial;

################################## START PCL ####################################

begin_pcl;

############# DECLARATIONS ##############
preset int run = 1;

int start_time = clock.time();

string subnr = logfile.subject();
logfile.set_filename(subnr + "_run" + string(run) + "_Sound_Color_Syn_Localizer_MRI.log");
output_file output = new output_file;
output.open( subnr + "_run" + string(run) + "_Sound_Color_Syn_Localizer_MRI_output.txt" );	
output.print(start_time);output.print("\n");
output.print( "block\ttrialnr\tpic_trial\tsound\tresponse_button\tRT\n" ); 

string sound_is = "";
int isi = 0;
int j = 1;
int k1 = 1;
int k2 = 1;
int m = 1;
int c1 = 1;
int c2 = 1;
int z = 1;

string dspoken = "1";
string fspoken = "2";
string minstr = "3";
string environ = "4";
string baseline = "5";

int lastResponse = 0;
double lastRT = 0.0;

int trial_number = 1;


###############################################################################

### START OF THE TRIALS LOOPS ###

###################
sub condition1 begin # dutch_spoken
		
		spoken_event.set_stimulus( spoken_dutch[k1] );  	
		sound_is = spoken_dutch[k1].description();
		spoken_event.set_event_code(dspoken);
		
		spoken_trial.present();
		
		if response_manager.response_count() > 0
			then 
				stimulus_data last = stimulus_manager.last_stimulus_data();
				lastRT = last.reaction_time_double();
				lastResponse = response_manager.last_response();
			else
				lastRT = 0.0;
				lastResponse = 0;
		end;
		
		output.print("dutch_spoken");output.print("\t");
		output.print(trial_number);output.print("\t");
		output.print(k1);output.print("\t");
		output.print(sound_is);output.print("\t");
		output.print(lastResponse);output.print("\t");
		output.print(lastRT);output.print("\n");
		
		trial_number = trial_number + 1;
		
		k1 = k1 + 1;				
end;

###################
sub condition2 begin # dutch_foreign
		
		spoken_event.set_stimulus( spoken_foreign[k2] );  	
		sound_is = spoken_foreign[k2].description();
		spoken_event.set_event_code(fspoken);
		
		spoken_trial.present();
		
		if response_manager.response_count() > 0
			then 
				stimulus_data last = stimulus_manager.last_stimulus_data();
				lastRT = last.reaction_time_double();
				lastResponse = response_manager.last_response();
			else
				lastRT = 0.0;
				lastResponse = 0;
		end;
		
		output.print("foreign_spoken");output.print("\t");
		output.print(trial_number);output.print("\t");
		output.print(k2);output.print("\t");
		output.print(sound_is);output.print("\t");
		output.print(lastResponse);output.print("\t");
		output.print(lastRT);output.print("\n");
		
		trial_number = trial_number + 1;
		
		k2 = k2 + 1;				
end;

###################
sub condition3 begin # music

loop j = 1 until j > 2  begin; 
		
		music_event.set_stimulus( music[c1] );  	
		sound_is = music[c1].description();
		music_event.set_event_code(minstr);
		
		music_trial.present();
		
		if response_manager.response_count() > 0
			then 
				stimulus_data last = stimulus_manager.last_stimulus_data();
				lastRT = last.reaction_time_double();
				lastResponse = response_manager.last_response();
			else
				lastRT = 0.0;
				lastResponse = 0;
		end;
		
		output.print("music");output.print("\t");
		output.print(trial_number);output.print("\t");
		output.print(c1);output.print("\t");
		output.print(sound_is);output.print("\t");
		output.print(lastResponse);output.print("\t");
		output.print(lastRT);output.print("\n");
		
		trial_number = trial_number + 1;
		
		c1 = c1 + 1;				
		j = j + 1;
	end;
end;

###################
sub condition4 begin # noise

noise.shuffle();

loop j = 1 until j > 8  begin; 
		
		noise_event.set_stimulus( noise[j] );  	
		sound_is = noise[j].description();
		noise_event.set_event_code(environ);
		
		noise_trial.present();
		
		if response_manager.response_count() > 0
			then 
				stimulus_data last = stimulus_manager.last_stimulus_data();
				lastRT = last.reaction_time_double();
				lastResponse = response_manager.last_response();
			else
				lastRT = 0.0;
				lastResponse = 0;
		end;
		
		output.print("noise");output.print("\t");
		output.print(trial_number);output.print("\t");
		output.print(j);output.print("\t");
		output.print(sound_is);output.print("\t");
		output.print(lastResponse);output.print("\t");
		output.print(lastRT);output.print("\n");
		
		trial_number = trial_number + 1;
		
		j = j + 1;
	end;
end;

######### Define subject conditions, counterbalancing

array <int> randomize_conditions [4][20] = 
{	
	{4,2,3,1,2,1,3,4,1,2,3,4,2,1,3,4,1,2,4,3},
	{1,2,4,3,2,1,3,4,1,2,4,3,1,2,3,4,3,4,2,1},
	{2,4,1,3,1,2,4,3,1,4,3,2,3,4,1,2,4,3,2,1},
	{3,2,4,1,3,1,2,4,3,2,4,1,4,1,2,3,1,2,4,3}
};
	
		spoken_dutch.shuffle(); 
		spoken_foreign.shuffle(); 
		music.shuffle();
		
		startTrial.present();
		
		# Begin with rest - Baseline block
		
		rest_event.set_event_code(baseline);
		rest_event.set_duration(17995);
	
		rest_event.set_stimulus( rest );
		rest_trial.present();
		

	loop k1 = 1 until k1 > spoken_dutch.count() begin;
	loop k2 = 1 until k2 > spoken_foreign.count() begin;
	loop c1 = 1 until c1 > 5 begin;
	# loop c2 = 1 until c2 > noise.count() begin;

		#the run number picks which of the 4 pseudo randomized condition orders
	loop z = 1 until z > 20 begin;  

			if randomize_conditions[run][z] == 1
					then condition1();
					# Baseline block
					rest_event.set_event_code(baseline);
					rest_event.set_duration(15995);
					rest_event.set_stimulus( rest );
					rest_trial.present();
					z = z + 1;
			elseif randomize_conditions[run][z] == 2
					then condition2();
					# Baseline block
					rest_event.set_event_code(baseline);
					rest_event.set_stimulus( rest );
					rest_event.set_duration(15995);
					rest_trial.present();
					z = z + 1;
			elseif randomize_conditions[run][z] == 3
					then condition3();
					# Baseline block
					rest_event.set_event_code(baseline);
					rest_event.set_stimulus( rest );
					rest_event.set_duration(15995);
					rest_trial.present();
					z = z + 1;
			elseif randomize_conditions[run][z] == 4
					then condition4();
					# Baseline block
					rest_event.set_event_code(baseline);
					rest_event.set_stimulus( rest );
					rest_event.set_duration(15995);
					rest_trial.present();
					z = z + 1;
			end;
				
		end;
	end;
	end;
end;
		
int end_time = clock.time();
output.print(end_time);output.print("\n");



