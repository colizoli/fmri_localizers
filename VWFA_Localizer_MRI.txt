#######################################################
# Visual Word Form Area Localizer - blocked fMRI 	  
# O. Colizoli 	2011								  
#                                                     
# Presentation SCE file                               
# Dutch vs. Chinese words (ABAB)                      
# 16 seconds active, 16 sec baseline (fixation cross) 
# Only 4-letter/character words used                  
# Instructions - passive viewing, maintain fixation   
# 9 blocks per condition                              
#######################################################

scenario = "VWFA_Localizer_MRI";

default_background_color = 255, 255, 255; 
default_font = "courier new";
default_font_size = 60;
default_text_color = 0,0,0;
response_matching = simple_matching;
response_logging = log_all;
active_buttons = 4;
button_codes = 1,2,3,4;

#scenario_type = fMRI_emulation; # only here to make emulation possible if desired
#scan_period = 2000;   # (ms) only here to make emulation possible if desired 
scenario_type = fMRI;
pulses_per_scan = 1;
pulse_code = 255;

begin;

################ STIMULUS DEFINITIONS ################

array{ # 144 words														
text	{caption	=	"TIEN"	;	description	=	"	TIEN	"	;}	;
text	{caption	=	"ECHT"	;	description	=	"	ECHT	"	;}	;
text	{caption	=	"ENIG"	;	description	=	"	ENIG	"	;}	;
text	{caption	=	"OVER"	;	description	=	"	OVER	"	;}	;
text	{caption	=	"STOF"	;	description	=	"	STOF	"	;}	;
text	{caption	=	"LUST"	;	description	=	"	LUST	"	;}	;
text	{caption	=	"DANK"	;	description	=	"	DANK	"	;}	;
text	{caption	=	"VORM"	;	description	=	"	VORM	"	;}	;
text	{caption	=	"NAME"	;	description	=	"	NAME	"	;}	;
text	{caption	=	"UREN"	;	description	=	"	UREN	"	;}	;
text	{caption	=	"BOEK"	;	description	=	"	BOEK	"	;}	;
text	{caption	=	"VELD"	;	description	=	"	VELD	"	;}	;
text	{caption	=	"WANG"	;	description	=	"	WANG	"	;}	;
text	{caption	=	"ZULT"	;	description	=	"	ZULT	"	;}	;
text	{caption	=	"KANS"	;	description	=	"	KANS	"	;}	;
text	{caption	=	"ETEN"	;	description	=	"	ETEN	"	;}	;
text	{caption	=	"ALLE"	;	description	=	"	ALLE	"	;}	;
text	{caption	=	"GOLF"	;	description	=	"	GOLF	"	;}	;
text	{caption	=	"REIS"	;	description	=	"	REIS	"	;}	;
text	{caption	=	"DOEN"	;	description	=	"	DOEN	"	;}	;
text	{caption	=	"VLUG"	;	description	=	"	VLUG	"	;}	;
text	{caption	=	"HUID"	;	description	=	"	HUID	"	;}	;
text	{caption	=	"HEMD"	;	description	=	"	HEMD	"	;}	;
text	{caption	=	"TERM"	;	description	=	"	TERM	"	;}	;
text	{caption	=	"PIJN"	;	description	=	"	PIJN	"	;}	;
text	{caption	=	"STEM"	;	description	=	"	STEM	"	;}	;
text	{caption	=	"GAST"	;	description	=	"	GAST	"	;}	;
text	{caption	=	"LIED"	;	description	=	"	LIED	"	;}	;
text	{caption	=	"ZORG"	;	description	=	"	ZORG	"	;}	;
text	{caption	=	"ARME"	;	description	=	"	ARME	"	;}	;
text	{caption	=	"FLES"	;	description	=	"	FLES	"	;}	;
text	{caption	=	"ACHT"	;	description	=	"	ACHT	"	;}	;
text	{caption	=	"MOND"	;	description	=	"	MOND	"	;}	;
text	{caption	=	"RING"	;	description	=	"	RING	"	;}	;
text	{caption	=	"GRAS"	;	description	=	"	GRAS	"	;}	;
text	{caption	=	"MELK"	;	description	=	"	MELK	"	;}	;
text	{caption	=	"DOCH"	;	description	=	"	DOCH	"	;}	;
text	{caption	=	"BANG"	;	description	=	"	BANG	"	;}	;
text	{caption	=	"TONG"	;	description	=	"	TONG	"	;}	;
text	{caption	=	"ONZE"	;	description	=	"	ONZE	"	;}	;
text	{caption	=	"OPEN"	;	description	=	"	OPEN	"	;}	;
text	{caption	=	"JURK"	;	description	=	"	JURK	"	;}	;
text	{caption	=	"TRAP"	;	description	=	"	TRAP	"	;}	;
text	{caption	=	"ZAND"	;	description	=	"	ZAND	"	;}	;
text	{caption	=	"STAD"	;	description	=	"	STAD	"	;}	;
text	{caption	=	"SLOT"	;	description	=	"	SLOT	"	;}	;
text	{caption	=	"PLUS"	;	description	=	"	PLUS	"	;}	;
text	{caption	=	"FASE"	;	description	=	"	FASE	"	;}	;
text	{caption	=	"BLAD"	;	description	=	"	BLAD	"	;}	;
text	{caption	=	"CHEF"	;	description	=	"	CHEF	"	;}	;
text	{caption	=	"RIJK"	;	description	=	"	RIJK	"	;}	;
text	{caption	=	"EIND"	;	description	=	"	EIND	"	;}	;
text	{caption	=	"CAFE"	;	description	=	"	CAFE	"	;}	;
text	{caption	=	"MOED"	;	description	=	"	MOED	"	;}	;
text	{caption	=	"HALF"	;	description	=	"	HALF	"	;}	;
text	{caption	=	"PERS"	;	description	=	"	PERS	"	;}	;
text	{caption	=	"LEUK"	;	description	=	"	LEUK	"	;}	;
text	{caption	=	"ERIN"	;	description	=	"	ERIN	"	;}	;
text	{caption	=	"VALT"	;	description	=	"	VALT	"	;}	;
text	{caption	=	"OLIE"	;	description	=	"	OLIE	"	;}	;
text	{caption	=	"AUTO"	;	description	=	"	AUTO	"	;}	;
text	{caption	=	"NAUW"	;	description	=	"	NAUW	"	;}	;
text	{caption	=	"AARD"	;	description	=	"	AARD	"	;}	;
text	{caption	=	"JUNI"	;	description	=	"	JUNI	"	;}	;
text	{caption	=	"SOMS"	;	description	=	"	SOMS	"	;}	;
text	{caption	=	"GEUR"	;	description	=	"	GEUR	"	;}	;
text	{caption	=	"LAST"	;	description	=	"	LAST	"	;}	;
text	{caption	=	"IETS"	;	description	=	"	IETS	"	;}	;
text	{caption	=	"DIER"	;	description	=	"	DIER	"	;}	;
text	{caption	=	"KOUD"	;	description	=	"	KOUD	"	;}	;
text	{caption	=	"SPEL"	;	description	=	"	SPEL	"	;}	;
text	{caption	=	"MEID"	;	description	=	"	MEID	"	;}	;
text	{caption	=	"WILD"	;	description	=	"	WILD	"	;}	;
text	{caption	=	"ZIEK"	;	description	=	"	ZIEK	"	;}	;
text	{caption	=	"BEST"	;	description	=	"	BEST	"	;}	;
text	{caption	=	"LUID"	;	description	=	"	LUID	"	;}	;
text	{caption	=	"HAND"	;	description	=	"	HAND	"	;}	;
text	{caption	=	"HOGE"	;	description	=	"	HOGE	"	;}	;
text	{caption	=	"MATE"	;	description	=	"	MATE	"	;}	;
text	{caption	=	"ZELF"	;	description	=	"	ZELF	"	;}	;
text	{caption	=	"GAUW"	;	description	=	"	GAUW	"	;}	;
text	{caption	=	"ELKE"	;	description	=	"	ELKE	"	;}	;
text	{caption	=	"WIER"	;	description	=	"	WIER	"	;}	;
text	{caption	=	"ZOEK"	;	description	=	"	ZOEK	"	;}	;
text	{caption	=	"FIJN"	;	description	=	"	FIJN	"	;}	;
text	{caption	=	"FLAT"	;	description	=	"	FLAT	"	;}	;
text	{caption	=	"WERK"	;	description	=	"	WERK	"	;}	;
text	{caption	=	"KAMP"	;	description	=	"	KAMP	"	;}	;
text	{caption	=	"TYPE"	;	description	=	"	TYPE	"	;}	;
text	{caption	=	"LOOP"	;	description	=	"	LOOP	"	;}	;
text	{caption	=	"SOEP"	;	description	=	"	SOEP	"	;}	;
text	{caption	=	"HALS"	;	description	=	"	HALS	"	;}	;
text	{caption	=	"RODE"	;	description	=	"	RODE	"	;}	;
text	{caption	=	"OOIT"	;	description	=	"	OOIT	"	;}	;
text	{caption	=	"NEUS"	;	description	=	"	NEUS	"	;}	;
text	{caption	=	"MOOI"	;	description	=	"	MOOI	"	;}	;
text	{caption	=	"THEE"	;	description	=	"	THEE	"	;}	;
text	{caption	=	"RUST"	;	description	=	"	RUST	"	;}	;
text	{caption	=	"ROZE"	;	description	=	"	ROZE	"	;}	;
text	{caption	=	"DORP"	;	description	=	"	DORP	"	;}	;
text	{caption	=	"KENT"	;	description	=	"	KENT	"	;}	;
text	{caption	=	"HOEK"	;	description	=	"	HOEK	"	;}	;
text	{caption	=	"BLIJ"	;	description	=	"	BLIJ	"	;}	;
text	{caption	=	"RIEP"	;	description	=	"	RIEP	"	;}	;
text	{caption	=	"WARM"	;	description	=	"	WARM	"	;}	;
text	{caption	=	"PAUS"	;	description	=	"	PAUS	"	;}	;
text	{caption	=	"JONG"	;	description	=	"	JONG	"	;}	;
text	{caption	=	"JAAR"	;	description	=	"	JAAR	"	;}	;
text	{caption	=	"JOUW"	;	description	=	"	JOUW	"	;}	;
text	{caption	=	"OREN"	;	description	=	"	OREN	"	;}	;
text	{caption	=	"FEIT"	;	description	=	"	FEIT	"	;}	;
text	{caption	=	"BANK"	;	description	=	"	BANK	"	;}	;
text	{caption	=	"PLEK"	;	description	=	"	PLEK	"	;}	;
text	{caption	=	"TAXI"	;	description	=	"	TAXI	"	;}	;
text	{caption	=	"LAGE"	;	description	=	"	LAGE	"	;}	;
text	{caption	=	"DEUR"	;	description	=	"	DEUR	"	;}	;
text	{caption	=	"KUST"	;	description	=	"	KUST	"	;}	;
text	{caption	=	"FOUT"	;	description	=	"	FOUT	"	;}	;
text	{caption	=	"BIER"	;	description	=	"	BIER	"	;}	;
text	{caption	=	"NIET"	;	description	=	"	NIET	"	;}	;
text	{caption	=	"KEUS"	;	description	=	"	KEUS	"	;}	;
text	{caption	=	"EVEN"	;	description	=	"	EVEN	"	;}	;
text	{caption	=	"PLAT"	;	description	=	"	PLAT	"	;}	;
text	{caption	=	"NOCH"	;	description	=	"	NOCH	"	;}	;
text	{caption	=	"KLAP"	;	description	=	"	KLAP	"	;}	;
text	{caption	=	"IDEE"	;	description	=	"	IDEE	"	;}	;
text	{caption	=	"GIDS"	;	description	=	"	GIDS	"	;}	;
text	{caption	=	"OUWE"	;	description	=	"	OUWE	"	;}	;
text	{caption	=	"HEBT"	;	description	=	"	HEBT	"	;}	;
text	{caption	=	"CLUB"	;	description	=	"	CLUB	"	;}	;
text	{caption	=	"PUNT"	;	description	=	"	PUNT	"	;}	;
text	{caption	=	"ARTS"	;	description	=	"	ARTS	"	;}	;
text	{caption	=	"WELK"	;	description	=	"	WELK	"	;}	;
text	{caption	=	"RAND"	;	description	=	"	RAND	"	;}	;
text	{caption	=	"GELD"	;	description	=	"	GELD	"	;}	;
text	{caption	=	"VIJF"	;	description	=	"	VIJF	"	;}	;
text	{caption	=	"FILM"	;	description	=	"	FILM	"	;}	;
text	{caption	=	"MIJN"	;	description	=	"	MIJN	"	;}	;
text	{caption	=	"NIKS"	;	description	=	"	NIKS	"	;}	;
text	{caption	=	"LIJN"	;	description	=	"	LIJN	"	;}	;
text	{caption	=	"DRIE"	;	description	=	"	DRIE	"	;}	;
text	{caption	=	"NEST"	;	description	=	"	NEST	"	;}	;
text	{caption	=	"VOEL"	;	description	=	"	VOEL	"	;}	;
text	{caption	=	"ADEM"	;	description	=	"	ADEM	"	;}	;
} dutch;

array{		# 144												
text	{caption	=	"TIEN"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	TIEN	"	;}	;
text	{caption	=	"ECHT"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	ECHT	"	;}	;
text	{caption	=	"ENIG"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	ENIG	"	;}	;
text	{caption	=	"OVER"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	OVER	"	;}	;
text	{caption	=	"STOF"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	STOF	"	;}	;
text	{caption	=	"LUST"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	LUST	"	;}	;
text	{caption	=	"DANK"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	DANK	"	;}	;
text	{caption	=	"VORM"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	VORM	"	;}	;
text	{caption	=	"NAME"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	NAME	"	;}	;
text	{caption	=	"UREN"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	UREN	"	;}	;
text	{caption	=	"BOEK"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	BOEK	"	;}	;
text	{caption	=	"VELD"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	VELD	"	;}	;
text	{caption	=	"WANG"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	WANG	"	;}	;
text	{caption	=	"ZULT"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	ZULT	"	;}	;
text	{caption	=	"KANS"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	KANS	"	;}	;
text	{caption	=	"ETEN"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	ETEN	"	;}	;
text	{caption	=	"ALLE"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	ALLE	"	;}	;
text	{caption	=	"GOLF"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	GOLF	"	;}	;
text	{caption	=	"REIS"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	REIS	"	;}	;
text	{caption	=	"DOEN"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	DOEN	"	;}	;
text	{caption	=	"VLUG"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	VLUG	"	;}	;
text	{caption	=	"HUID"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	HUID	"	;}	;
text	{caption	=	"HEMD"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	HEMD	"	;}	;
text	{caption	=	"TERM"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	TERM	"	;}	;
text	{caption	=	"PIJN"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	PIJN	"	;}	;
text	{caption	=	"STEM"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	STEM	"	;}	;
text	{caption	=	"GAST"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	GAST	"	;}	;
text	{caption	=	"LIED"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	LIED	"	;}	;
text	{caption	=	"ZORG"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	ZORG	"	;}	;
text	{caption	=	"ARME"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	ARME	"	;}	;
text	{caption	=	"FLES"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	FLES	"	;}	;
text	{caption	=	"ACHT"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	ACHT	"	;}	;
text	{caption	=	"MOND"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	MOND	"	;}	;
text	{caption	=	"RING"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	RING	"	;}	;
text	{caption	=	"GRAS"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	GRAS	"	;}	;
text	{caption	=	"MELK"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	MELK	"	;}	;
text	{caption	=	"DOCH"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	DOCH	"	;}	;
text	{caption	=	"BANG"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	BANG	"	;}	;
text	{caption	=	"TONG"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	TONG	"	;}	;
text	{caption	=	"ONZE"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	ONZE	"	;}	;
text	{caption	=	"OPEN"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	OPEN	"	;}	;
text	{caption	=	"JURK"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	JURK	"	;}	;
text	{caption	=	"TRAP"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	TRAP	"	;}	;
text	{caption	=	"ZAND"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	ZAND	"	;}	;
text	{caption	=	"STAD"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	STAD	"	;}	;
text	{caption	=	"SLOT"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	SLOT	"	;}	;
text	{caption	=	"PLUS"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	PLUS	"	;}	;
text	{caption	=	"FASE"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	FASE	"	;}	;
text	{caption	=	"BLAD"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	BLAD	"	;}	;
text	{caption	=	"CHEF"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	CHEF	"	;}	;
text	{caption	=	"RIJK"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	RIJK	"	;}	;
text	{caption	=	"EIND"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	EIND	"	;}	;
text	{caption	=	"CAFE"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	CAFE	"	;}	;
text	{caption	=	"MOED"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	MOED	"	;}	;
text	{caption	=	"HALF"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	HALF	"	;}	;
text	{caption	=	"PERS"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	PERS	"	;}	;
text	{caption	=	"LEUK"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	LEUK	"	;}	;
text	{caption	=	"ERIN"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	ERIN	"	;}	;
text	{caption	=	"VALT"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	VALT	"	;}	;
text	{caption	=	"OLIE"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	OLIE	"	;}	;
text	{caption	=	"AUTO"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	AUTO	"	;}	;
text	{caption	=	"NAUW"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	NAUW	"	;}	;
text	{caption	=	"AARD"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	AARD	"	;}	;
text	{caption	=	"JUNI"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	JUNI	"	;}	;
text	{caption	=	"SOMS"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	SOMS	"	;}	;
text	{caption	=	"GEUR"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	GEUR	"	;}	;
text	{caption	=	"LAST"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	LAST	"	;}	;
text	{caption	=	"IETS"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	IETS	"	;}	;
text	{caption	=	"DIER"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	DIER	"	;}	;
text	{caption	=	"KOUD"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	KOUD	"	;}	;
text	{caption	=	"SPEL"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	SPEL	"	;}	;
text	{caption	=	"MEID"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	MEID	"	;}	;
text	{caption	=	"WILD"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	WILD	"	;}	;
text	{caption	=	"ZIEK"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	ZIEK	"	;}	;
text	{caption	=	"BEST"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	BEST	"	;}	;
text	{caption	=	"LUID"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	LUID	"	;}	;
text	{caption	=	"HAND"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	HAND	"	;}	;
text	{caption	=	"HOGE"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	HOGE	"	;}	;
text	{caption	=	"MATE"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	MATE	"	;}	;
text	{caption	=	"ZELF"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	ZELF	"	;}	;
text	{caption	=	"GAUW"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	GAUW	"	;}	;
text	{caption	=	"ELKE"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	ELKE	"	;}	;
text	{caption	=	"WIER"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	WIER	"	;}	;
text	{caption	=	"ZOEK"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	ZOEK	"	;}	;
text	{caption	=	"FIJN"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	FIJN	"	;}	;
text	{caption	=	"FLAT"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	FLAT	"	;}	;
text	{caption	=	"WERK"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	WERK	"	;}	;
text	{caption	=	"KAMP"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	KAMP	"	;}	;
text	{caption	=	"TYPE"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	TYPE	"	;}	;
text	{caption	=	"LOOP"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	LOOP	"	;}	;
text	{caption	=	"SOEP"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	SOEP	"	;}	;
text	{caption	=	"HALS"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	HALS	"	;}	;
text	{caption	=	"RODE"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	RODE	"	;}	;
text	{caption	=	"OOIT"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	OOIT	"	;}	;
text	{caption	=	"NEUS"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	NEUS	"	;}	;
text	{caption	=	"MOOI"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	MOOI	"	;}	;
text	{caption	=	"THEE"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	THEE	"	;}	;
text	{caption	=	"RUST"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	RUST	"	;}	;
text	{caption	=	"ROZE"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	ROZE	"	;}	;
text	{caption	=	"DORP"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	DORP	"	;}	;
text	{caption	=	"KENT"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	KENT	"	;}	;
text	{caption	=	"HOEK"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	HOEK	"	;}	;
text	{caption	=	"BLIJ"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	BLIJ	"	;}	;
text	{caption	=	"RIEP"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	RIEP	"	;}	;
text	{caption	=	"WARM"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	WARM	"	;}	;
text	{caption	=	"PAUS"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	PAUS	"	;}	;
text	{caption	=	"JONG"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	JONG	"	;}	;
text	{caption	=	"JAAR"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	JAAR	"	;}	;
text	{caption	=	"JOUW"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	JOUW	"	;}	;
text	{caption	=	"OREN"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	OREN	"	;}	;
text	{caption	=	"FEIT"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	FEIT	"	;}	;
text	{caption	=	"BANK"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	BANK	"	;}	;
text	{caption	=	"PLEK"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	PLEK	"	;}	;
text	{caption	=	"TAXI"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	TAXI	"	;}	;
text	{caption	=	"LAGE"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	LAGE	"	;}	;
text	{caption	=	"DEUR"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	DEUR	"	;}	;
text	{caption	=	"KUST"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	KUST	"	;}	;
text	{caption	=	"FOUT"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	FOUT	"	;}	;
text	{caption	=	"BIER"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	BIER	"	;}	;
text	{caption	=	"NIET"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	NIET	"	;}	;
text	{caption	=	"KEUS"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	KEUS	"	;}	;
text	{caption	=	"EVEN"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	EVEN	"	;}	;
text	{caption	=	"PLAT"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	PLAT	"	;}	;
text	{caption	=	"NOCH"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	NOCH	"	;}	;
text	{caption	=	"KLAP"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	KLAP	"	;}	;
text	{caption	=	"IDEE"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	IDEE	"	;}	;
text	{caption	=	"GIDS"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	GIDS	"	;}	;
text	{caption	=	"OUWE"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	OUWE	"	;}	;
text	{caption	=	"HEBT"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	HEBT	"	;}	;
text	{caption	=	"CLUB"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	CLUB	"	;}	;
text	{caption	=	"PUNT"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	PUNT	"	;}	;
text	{caption	=	"ARTS"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	ARTS	"	;}	;
text	{caption	=	"WELK"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	WELK	"	;}	;
text	{caption	=	"RAND"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	RAND	"	;}	;
text	{caption	=	"GELD"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	GELD	"	;}	;
text	{caption	=	"VIJF"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	VIJF	"	;}	;
text	{caption	=	"FILM"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	FILM	"	;}	;
text	{caption	=	"MIJN"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	MIJN	"	;}	;
text	{caption	=	"NIKS"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	NIKS	"	;}	;
text	{caption	=	"LIJN"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	LIJN	"	;}	;
text	{caption	=	"DRIE"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	DRIE	"	;}	;
text	{caption	=	"NEST"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	NEST	"	;}	;
text	{caption	=	"VOEL"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	VOEL	"	;}	;
text	{caption	=	"ADEM"	;	font_size = 35;	font=	"Hanzi Kaishu";	description	=	"	ADEM	"	;}	;
} chinese;

array{														
text {caption = "+"; font_color= 0,0,0; font_size = 30; font = "Times New Roman"; description = "rest1";} ; 
} rest;

#Instructions for participants
picture { text {caption = "The experiment will start at any moment.
Make sure that you stay still.  

Look at the middle of the screen while the words appear.
 
There will be periods when no words appear. 
please keep looking at the screen during this time.

You do not have to push any buttons."; 
font_color = 0,0,0; font_size = 24; font = "Times New Roman";
}; x = 0; y = 0; } startTrialPicture; 

# Blank and fixation screens
picture {background_color = 255,255,255;} white_screen; 
picture {text {caption = "+"; font_color= 0,0,0; font_size=30; font = "Times New Roman";} fix_text; x = 0; y = 0; }  pic_fix;

# Placeholder for variables
bitmap {filename = "red.bmp";  description = "placeholder"; } placeholder;

############ Start fMRI Trial ####################
trial {   
   picture startTrialPicture;
   time = 0;       
   duration = next_picture;
   picture startTrialPicture;
   mri_pulse = 1;   
   duration = 1000;                    
} startTrial;


################# Button Trial ################################
trial {
		all_responses = false;	           # Does not log all responses, only those during active events # 
		trial_type = fixed;				 

	stimulus_event {								         
					picture white_screen;
					time = 0;
					duration = 245;
					code = "isi_blank";
					response_active = false;
					}isi_blank;
					
	stimulus_event {								         
					picture pic_fix;
					deltat = 245;
					duration = 245;
					code = "isi_fix";
					response_active = false;
					}isi_fix;
					
	stimulus_event {						               
					picture {
						bitmap placeholder;
						x = 0; y = 0;
					} word_stim;
					deltat = 245;
					duration = 495;
					code = "word";
					response_active = false;
					}word_event;
					
} word_trial;

################# Baseline ################################
trial {
		all_responses = false;	           # Does not log all responses, only those during active events # 
		trial_type = fixed;					 
					
	stimulus_event {						               
					picture {
						bitmap placeholder;
						x = 0; y = 0;
					} rest_stim;
					time = 0;
					duration = 15995;
					code = "rest";
					response_active = false;
					}rest_event;
					
} rest_trial;

################################## START PCL ####################################

begin_pcl;

############# DECLARATIONS ##############

int start_time = clock.time();

string subnr = logfile.subject();
output_file output = new output_file;
output.open( "VWFA_Localizer_16s_" + subnr + "_output.txt" );	
output.print(start_time);output.print("\n");

string word = "";
int isi = 0;
int j = 1;
int k = 1;
int m = 1;
int c = 1;
int r = 1;

string baseline = "0";
string nederlands = "1";
string china = "2";

###############################################################################

### START OF THE TRIALS LOOPS ###

###################
sub condition1 begin

output.print( "block\ttrialnr\tword\n" ); 

int trial_number = 1;

#dutch.shuffle();

loop j = 1 until j > 16  begin; 
		
		word_stim.set_part( 1, dutch[k] );
	
		word = dutch[k].description();
		
		word_event.set_event_code(nederlands);
		
		word_trial.present();
		
		output.print("dutch");output.print("\t");
		output.print(trial_number);output.print("\t");
		output.print(word);output.print("\n");

		trial_number = trial_number + 1;
		
		k = k + 1;
				
		j = j + 1;
		end;
		
	# Baseline block
	
		rest_event.set_event_code(baseline);
	
		rest_stim.set_part( 1, rest[1] );
		rest_trial.present();

end;


###################
sub condition2 begin

output.print( "block\ttrialnr\tword\n" ); 

int trial_number = 1;

#chinese.shuffle();

loop j = 1 until j > 16  begin; 
		
		word_stim.set_part( 1, chinese[c] );
	
		word = chinese[c].description();
		
		word_event.set_event_code(china);
		
		word_trial.present();
		
		output.print("chinese");output.print("\t");
		output.print(trial_number);output.print("\t");
		output.print(word);output.print("\n");

		trial_number = trial_number + 1;
		
		c = c + 1;
				
		j = j + 1;
		end;

		
	# Baseline block
	
		rest_event.set_event_code(baseline);

		rest_stim.set_part( 1, rest[1] );		
		rest_trial.present();
		
end;


######### Define subject conditions
preset int subjectCondition = 1;

array <int> conditions [18] = 
{1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2};

if subjectCondition == 1 then

		dutch.shuffle();  
		chinese.shuffle();
		
		startTrial.present();
		
		# Begin with rest - Baseline block
		
		rest_event.set_event_code(baseline);
		rest_event.set_duration(17995);
	
		rest_stim.set_part( 1, rest[1] );
		rest_trial.present();


		loop k = 1 until k > dutch.count() begin;
		loop c = 1 until c > chinese.count() begin;
		
		loop r = 1 until r > conditions.count() begin;  
		# 32 seconds each * 18 = 576 s = 9.6 minutes
		
			if conditions[r] == 1
			then condition1();
			elseif conditions[r] == 2
			then condition2();
			end;
		
		r=r+1;
		
		end;
		
		
		end;
		end;
		
		int end_time = clock.time();
		output.print(end_time);output.print("\n");

end;


