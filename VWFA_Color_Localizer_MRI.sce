########################################################														
# VWFA (Dutch), and (Synesthetic) Color Localizer      #				  
# O. Colizoli, 2012									   #
# Universiteit van Amsterdam (Dept. Psych.)			   #
#													   #
# Presentation SCE file 		                       #
# blocked fMRI - ABCDABCD			                   #
# 16 seconds active, 16 sec baseline (fixation cross)  #
# 4 conditions:                                        #
# Dutch words black                                    #
# Dutch words color                                    #
# Chinese words black                                  #
# Chinese words color                                  #
# Instructions - passive viewing, maintain fixation    #                             
# 4 conditions x 5 blocks = 20 blocks total            #
# 16 images per block x 5 blocks per condition         #
#######################################################


scenario = "VWFA_Color_Localizer_MRI";

default_background_color = 255, 255, 255; 
default_font = "courier new";
default_font_size = 60;
default_text_color = 0,0,0;
response_matching = simple_matching;
response_logging = log_all;
active_buttons = 8;
button_codes = 1,2,3,4,5,6,7,8;

scenario_type = fMRI_emulation;
#scan_period = 2000;   # (ms) only here to make emulation possible if desired 
#scenario_type = fMRI;
pulses_per_scan = 1;
pulse_code = 255;

begin;

################ STIMULUS DEFINITIONS ################

array{ # 80 words														
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
} dutch_black;

array{ # 80 words														
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
} dutch_color;

array{		# 80												
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
} chinese_black;

array{		# 80											
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
} chinese_color;

													
picture { description = "rest"; text {caption = "+"; font_color= 0,0,0; font_size = 30; font = "Times New Roman";}; x = 0; y = 0; } rest; 

#Instructions for participants
picture { text {caption = "You will see a series of Dutch and Chinese words.

Look at the middle of the screen while the words appear.
Also, keep looking at the screen when there are no words.

The experiment will start at any moment.
Make sure that you stay still. "; 
font_color = 0,0,0; font_size = 24; font = "Times New Roman";
}; x = 0; y = 0; } startTrialPicture; 

# Blank and fixation screens
picture {background_color = 255,255,255;} white_screen; 
picture {text {caption = "+"; font_color= 0,0,0; font_size=30; font = "Times New Roman";} fix_text; x = 0; y = 0; }  pic_fix;


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
					picture pic_fix;
					time = 0;
					duration = 245;
					code = "isi_fix";
					response_active = false;
					}isi_fix;
					
	stimulus_event {						               
					picture {
						text fix_text;
						x = 0; y = 0;
					} word_stim;
					deltat = 245;
					duration = 745;
					response_active = true;
					}word_event;
					
} word_trial;

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
logfile.set_filename(subnr + "_run" + string(run) + "_VWFA_Color_Syn_Localizer_MRI.log");
output_file output = new output_file;
output.open( subnr + "_run" + string(run) + "_VWFA_Color_Syn_Localizer_MRI_output.txt" );	
output.print(start_time);output.print("\n");
output.print( "block\ttrialnr\tpic_trial\tword\tcolor\tresponse_button\tRT\n" ); 

string word = "";
string color = "";
int isi = 0;
int j = 1;
int k1 = 1;
int k2 = 1;
int m = 1;
int c1 = 1;
int c2 = 1;
int z = 1;

string dblack = "1";
string dcolor = "2";
string cblack = "3";
string ccolor = "4";
string baseline = "5";

int lastResponse = 0;
double lastRT = 0.0;

int trial_number = 1;

int r = 0;
int g = 0;
int b = 0;

array <int> stroop_color [16][3] = 
{
	{230,0,0}, 		#red
	{255,102,0}, 	#orange
	{0,203,230}, 	#torquoise (0,203,230) brown  (0, 158, 179)  brown {179,110,0}
	{246,236,0}, 	#yellow
	{0,210,0}, 		#green
	{0,203,230}, 	#blue
	{150,45,225}, 	#purple
	{242,112,220}, #pink
	{230,0,0}, 		#red
	{255,102,0}, 	#orange
	{0,203,230}, 	#torquoise (0,203,230) brown  (0, 158, 179)  brown {179,110,0}
	{246,236,0}, 	#yellow
	{0,210,0}, 		#green
	{0,203,230}, 	#blue
	{150,45,225}, 	#purple
	{242,112,220} 	#pink
} ;

###############################################################################

### START OF THE TRIALS LOOPS ###

###################
sub condition1 begin # dutch_black

loop j = 1 until j > 16  begin; 

		dutch_black[k1].set_font_color(0,0,0);
		dutch_black[k1].redraw();
		color = "black";
		
		word_stim.set_part( 1, dutch_black[k1] );
		word = dutch_black[k1].description();
		word_event.set_event_code(dblack);
		
		word_trial.present();
		
		if response_manager.response_count() > 0
			then 
				stimulus_data last = stimulus_manager.last_stimulus_data();
				lastRT = last.reaction_time_double();
				lastResponse = response_manager.last_response();
			else
				lastRT = 0.0;
				lastResponse = 0;
		end;
		
		output.print("dutch_black");output.print("\t");
		output.print(trial_number);output.print("\t");
		output.print(k1);output.print("\t");
		output.print(word);output.print("\t");
		output.print(color);output.print("\t");
		output.print(lastResponse);output.print("\t");
		output.print(lastRT);output.print("\n");
		
		trial_number = trial_number + 1;
		
		k1 = k1 + 1;				
		j = j + 1;
		end;
end;

###################
sub condition2 begin # dutch_color

stroop_color.shuffle();

loop j = 1 until j > 16  begin; 

		dutch_color[k2].set_font_color(stroop_color[j][1],stroop_color[j][2],stroop_color[j][3]);
		dutch_color[k2].redraw();
		
		r = stroop_color[j][1];
		g = stroop_color[j][2];
		b = stroop_color[j][3];	

		word_stim.set_part( 1, dutch_color[k2] );
		word = dutch_color[k2].description();
		word_event.set_event_code(dcolor);
		
		word_trial.present();
		
		if response_manager.response_count() > 0
			then 
				stimulus_data last = stimulus_manager.last_stimulus_data();
				lastRT = last.reaction_time_double();
				lastResponse = response_manager.last_response();
			else
				lastRT = 0.0;
				lastResponse = 0;
		end;
		
		output.print("dutch_color");output.print("\t");
		output.print(trial_number);output.print("\t");
		output.print(k2);output.print("\t");
		output.print(word);output.print("\t");
		output.print(r);output.print(",");output.print(g);output.print(",");output.print(b);output.print("\t");
		output.print(lastResponse);output.print("\t");
		output.print(lastRT);output.print("\n");
		
		trial_number = trial_number + 1;
		
		k2 = k2 + 1;
		j = j + 1;
		end;
end;


###################
sub condition3 begin # chinese_black

loop j = 1 until j > 16  begin; 

		chinese_black[c1].set_font_color(0,0,0);
		chinese_black[c1].redraw();
		color = "black";
		
		word_stim.set_part( 1, chinese_black[c1] );
		word = chinese_black[c1].description();
		word_event.set_event_code(cblack);

		word_trial.present();
		
		if response_manager.response_count() > 0
			then 
				stimulus_data last = stimulus_manager.last_stimulus_data();
				lastRT = last.reaction_time_double();
				lastResponse = response_manager.last_response();
			else
				lastRT = 0.0;
				lastResponse = 0;
		end;

		output.print("chinese_black");output.print("\t");
		output.print(trial_number);output.print("\t");
		output.print(c1);output.print("\t");
		output.print(word);output.print("\t");
		output.print(color);output.print("\t");
		output.print(lastResponse);output.print("\t");
		output.print(lastRT);output.print("\n");

		trial_number = trial_number + 1;
		
		c1 = c1 + 1;				
		j = j + 1;
		end;		
end;

###################
sub condition4 begin # chinese_color

stroop_color.shuffle();

loop j = 1 until j > 16  begin; 

		chinese_color[c2].set_font_color(stroop_color[j][1],stroop_color[j][2],stroop_color[j][3]);
		chinese_color[c2].redraw();
		
		r = stroop_color[j][1];
		g = stroop_color[j][2];
		b = stroop_color[j][3];	

		word_stim.set_part( 1, chinese_color[c2] );
		word = chinese_color[c2].description();
		word_event.set_event_code(ccolor);
		
		word_trial.present();
		
		if response_manager.response_count() > 0
			then 
				stimulus_data last = stimulus_manager.last_stimulus_data();
				lastRT = last.reaction_time_double();
				lastResponse = response_manager.last_response();
			else
				lastRT = 0.0;
				lastResponse = 0;
		end;
		
		output.print("chinese_color");output.print("\t");
		output.print(trial_number);output.print("\t");
		output.print(c2);output.print("\t");
		output.print(word);output.print("\t");
		output.print(r);output.print(",");output.print(g);output.print(",");output.print(b);output.print("\t");
		output.print(lastResponse);output.print("\t");
		output.print(lastRT);output.print("\n");

		trial_number = trial_number + 1;
		
		c2 = c2 + 1;						
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
	
		dutch_black.shuffle(); 
		dutch_color.shuffle(); 
		chinese_black.shuffle();
		chinese_color.shuffle();
		
		startTrial.present();
		
		# Begin with rest - Baseline block
		
		rest_event.set_event_code(baseline);
		rest_event.set_duration(17995);
	
		rest_event.set_stimulus( rest );
		rest_trial.present();
		

	loop k1 = 1 until k1 > dutch_black.count() begin;
	loop k2 = 1 until k2 > dutch_color.count() begin;
	loop c1 = 1 until c1 > chinese_black.count() begin;
	loop c2 = 1 until c2 > chinese_color.count() begin;

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
end;
		
int end_time = clock.time();
output.print(end_time);output.print("\n");



