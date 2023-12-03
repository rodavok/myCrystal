	db MAROWAK ; 105

	db  60,  80, 110,  45,  50,  80
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 75 ; catch rate
	db 124 ; base exp
	db NO_ITEM, THICK_CLUB ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/marowak/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
    tmhm  ROCK_SMASH, TOXIC, HYPER_BEAM,BELLY_DRUM, RETURN, ICE_BEAM, DOUBLE_TEAM, SNORE,SWORDS_DANCE, ATTRACT, SUNNY_DAY, REST, THIEF,BLIZZARD,FIRE_BLAST, FIRE_PUNCH,DIG, EARTHQUAKE, FLAMETHROWER,BODY_SLAM,HYPER_BEAM,SUBMISSION,SCREECH,ANCIENTPOWER, ENDURE,BUBBLEBEAM, MUD_SLAP, PROTECT,EARTHQUAKE, FRUSTRATION, DYNAMICPUNCH, CURSE, HIDDEN_POWER, ICY_WIND,SKULL_BASH,ROCK_SLIDE, FIRE_BLAST, HEADBUTT, DETECT,PERISH_SONG, STRENGTH, IRON_TAIL, DIG, BLIZZARD, SLEEP_TALK,ICE_BEAM, THUNDERPUNCH, SANDSTORM, SWAGGER	; end
