	db IVYSAUR ; 002

	db  60,  62,  63,  60,  80,  80
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 141 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/ivysaur/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
    tmhm  CUT,REFLECT, TOXIC, RETURN, FLASH,PETAL_DANCE, DOUBLE_TEAM, SNORE,MEGA_DRAIN,SWORDS_DANCE, ATTRACT, SUNNY_DAY, GIGA_DRAIN, REST,RAZOR_WIND, SLUDGE_BOMB,BODY_SLAM,ANCIENTPOWER,LIGHT_SCREEN, ENDURE,SOLARBEAM, SOLARBEAM, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, DEFENSE_CURL, HIDDEN_POWER, SWEET_SCENT,SKULL_BASH, HEADBUTT, FURY_CUTTER, SLEEP_TALK, LIGHT_SCREEN, SWAGGER	; end
