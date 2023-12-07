	db ESPEON ; 196

	db  65,  65,  60, 110, 130,  95
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 197 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	;db 100 ; unknown 1
	db 35 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/espeon/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm  CUT, TOXIC, HYPER_BEAM, RETURN, FLASH, PSYCH_UP, ZAP_CANNON, DREAM_EATER, DOUBLE_TEAM, SNORE,GROWTH, ATTRACT, SUNNY_DAY, REST,BODY_SLAM, SWIFT, ENDURE, RAIN_DANCE, NIGHTMARE, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, HIDDEN_POWER,CHARM, PSYCHIC_M, HEADBUTT, DETECT, SHADOW_BALL, IRON_TAIL, SLEEP_TALK, SWAGGER	; end
