	db ELECTABUZZ ; 125

	db  65,  83,  57, 105,  95,  85
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 156 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	;db 100 ; unknown 1
	db 25 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/electabuzz/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
    tmhm  ROCK_SMASH,THUNDER,REFLECT, TOXIC, ICE_PUNCH,BARRIER,SWIFT, HYPER_BEAM, RETURN, FLASH, THUNDER, ZAP_CANNON, DOUBLE_TEAM, SNORE, ATTRACT, REST, THIEF,METRONOME, FIRE_PUNCH,BODY_SLAM,HYPER_BEAM,SUBMISSION, SWIFT, THUNDERBOLT, ENDURE,THUNDERBOLT, RAIN_DANCE, MUD_SLAP, PROTECT,MEDITATE, FRUSTRATION, DYNAMICPUNCH, CURSE, HIDDEN_POWER,SKULL_BASH,CROSS_CHOP,THUNDER_WAVE, PSYCHIC_M, HEADBUTT, DETECT, STRENGTH, IRON_TAIL, SLEEP_TALK, THUNDERPUNCH, SWAGGER, TELEPORT	; end
