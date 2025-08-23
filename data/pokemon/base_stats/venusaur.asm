	db VENUSAUR ; 003

	db  80,  82,  83,  80, 100, 100
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 208 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/venusaur/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
    tmhm  DOUBLE_EDGE, TAKE_DOWN, CUT,REFLECT, TOXIC, HYPER_BEAM, RETURN, ROAR, FLASH,PETAL_DANCE, DOUBLE_TEAM, SNORE,MEGA_DRAIN,SWORDS_DANCE, ATTRACT, SUNNY_DAY, GIGA_DRAIN, REST, SLUDGE_BOMB,BODY_SLAM,HYPER_BEAM,ANCIENTPOWER,LIGHT_SCREEN, ENDURE,SOLARBEAM, SOLARBEAM, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, DEFENSE_CURL, HIDDEN_POWER, SWEET_SCENT,SKULL_BASH, HEADBUTT, FURY_CUTTER, SLEEP_TALK, LIGHT_SCREEN, SWAGGER	; end
