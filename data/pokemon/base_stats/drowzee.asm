	db DROWZEE ; 096

	db  60,  48,  45,  42,  43,  90
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 190 ; catch rate
	db 102 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/drowzee/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
    tmhm TRI_ATTACK,REFLECT, TOXIC, ICE_PUNCH,BARRIER, RETURN, FLASH, PSYCH_UP, ZAP_CANNON, DREAM_EATER, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST,METRONOME, FIRE_PUNCH,BODY_SLAM,SUBMISSION,DREAM_EATER,AMNESIA,LIGHT_SCREEN, ENDURE, RAIN_DANCE, NIGHTMARE, PROTECT, FRUSTRATION, DYNAMICPUNCH, CURSE, HIDDEN_POWER,SKULL_BASH,THUNDER_WAVE, PSYCHIC_M, HEADBUTT, SHADOW_BALL, SLEEP_TALK, THUNDERPUNCH, SWAGGER	; end
