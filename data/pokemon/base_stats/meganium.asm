	db MEGANIUM ; 154

	db  80,  82, 100,  80,  83, 100
	;   hp  atk  def  spd  sat  sdf

	db GRASS, DRAGON ; type
	db 45 ; catch rate
	db 208 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/meganium/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
    tmhm  SWORDS_DANCE, WEATHER_BALL, CUT, ROCK_SMASH, TOXIC, HYPER_BEAM, DRAGONBREATH, RETURN, FLASH,PETAL_DANCE,COUNTER, DOUBLE_TEAM, SNORE,SWORDS_DANCE, ATTRACT, SUNNY_DAY, GIGA_DRAIN, REST, EARTHQUAKE,ANCIENTPOWER, ENDURE, SOLARBEAM, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, HIDDEN_POWER, SWEET_SCENT, HEADBUTT, DETECT, FURY_CUTTER, STRENGTH, IRON_TAIL, SLEEP_TALK, SWAGGER	; end
