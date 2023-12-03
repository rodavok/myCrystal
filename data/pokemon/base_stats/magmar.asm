	db MAGMAR ; 126

	db  65,  95,  57,  93, 100,  85
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 167 ; base exp
	db BURNT_BERRY, BURNT_BERRY ; items
	db GENDER_F25 ; gender ratio
	;db 100 ; unknown 1
	db 25 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/magmar/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
    tmhm  ROCK_SMASH, TOXIC,BARRIER, HYPER_BEAM, RETURN, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST, THIEF,METRONOME,FIRE_BLAST, FIRE_PUNCH, FLAMETHROWER,BODY_SLAM,HYPER_BEAM,SUBMISSION,SCREECH, ENDURE, MUD_SLAP, PROTECT, FRUSTRATION, DYNAMICPUNCH, CURSE, HIDDEN_POWER,SKULL_BASH,CROSS_CHOP, PSYCHIC_M, FIRE_BLAST, HEADBUTT, DETECT, STRENGTH, IRON_TAIL, SLEEP_TALK, THUNDERPUNCH, SWAGGER	; end
