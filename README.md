# fmri_localizers
Some code for anyone interested in fMRI localization. <br>
I will continue to update with more scripts. 

## Currently included...
* Visual word form area (VWFA) and color localizers (Presentation)
* Spoken language and sound (music vs. environmental) localizer (Presentation)
* Area MT localizer (coherent vs. random dot motion) (MATLAB)

### Presentation programming language

#### VWFA_Localizer_MRI.sce
* Dutch vs. Chinese words (ABAB)
* blocked design

#### VWFA_Color_Localizer_MRI.sce
* Dutch vs. Chinese words 
* Black vs. color 
* blocked design

#### Language_Sound_Localizer_MRI.sce
* Dutch vs. foreign words spoken
* Musical instruments vs. daily environmental sounds
* blocked design

#### Visual_Categories_Localizer_MRI.sce
* 6 Categories of visual items:
* Faces, Houses, Words (Dutch), Objects, Scrambled Objects, Colors
* blocked design

### MATLAB programming language

#### fMRI_MT_Localizer.m
* Coherent vs. random dot motion (ABAB)
* blocked design
* 8 directions of motion (cardinal + diagonal)
* Dependent functions are included in the same folder
* Thanks to Anne Urai for much of the dot motion code

The VWFA, color and sound protocols were used successfully in the following publications. 
Note: The color localization used in these studies was similar but with letters instead of words.

* Colizoli, O., Murre, J. M., Scholte, H. S., & Rouw, R. (2017). Creating Colored Letters: Familial Markers of Grapheme–Color Synesthesia in Parietal Lobe Activation and Structure. Journal of Cognitive Neuroscience (in press).

* Colizoli, O., Murre, J. M., Scholte, H. S., van Es, D. M., Knapen, T., & Rouw, R. (2016). Visual cortex activity predicts subjective experience after reading books with colored letters. Neuropsychologia, 88, 15-27.

* Colizoli, O., Murre, J. M., & Rouw, R. (2013). A taste for words and sounds: a case of lexical-gustatory and sound-gustatory synesthesia. Frontiers in Psychology ,  4: 775. [OPEN ACCESS](http://journal.frontiersin.org/article/10.3389/fpsyg.2013.00775/full)

Feel free to email me for stimuli and/or copies of closed-access publications
