	db ABRA ; 063

	db  25,  20,  15,  90, 105,  55
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 200 ; catch rate
	db 73 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/abra/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
    tmhm TRI_ATTACK,REFLECT, TOXIC, ICE_PUNCH,BARRIER, RETURN, FLASH, PSYCH_UP, ZAP_CANNON, DREAM_EATER, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST, THIEF,METRONOME, FIRE_PUNCH,BODY_SLAM,SUBMISSION,LIGHT_SCREEN, ENDURE, RAIN_DANCE, NIGHTMARE, PROTECT, FRUSTRATION, DYNAMICPUNCH, CURSE, HIDDEN_POWER,SKULL_BASH,THUNDER_WAVE, PSYCHIC_M, HEADBUTT, SHADOW_BALL, SLEEP_TALK, THUNDERPUNCH, SWAGGER	; end
