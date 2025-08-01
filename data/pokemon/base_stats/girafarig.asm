	db GIRAFARIG ; 203

	db  70,  80,  65,  85,  90,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, PSYCHIC_TYPE ; type
	db 60 ; catch rate
	db 149 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/girafarig/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm  DOUBLE_EDGE, THUNDER_WAVE, TAKE_DOWN, CRUNCH, ROCK_SMASH, PSYBEAM, TOXIC, RETURN, THUNDER, PSYCH_UP, ZAP_CANNON, DREAM_EATER, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST, THIEF, EARTHQUAKE, SWIFT,AMNESIA, THUNDERBOLT,FUTURE_SIGHT, ENDURE, NIGHTMARE,BEAT_UP, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, HIDDEN_POWER, PSYCHIC_M,TAKE_DOWN, HEADBUTT, SHADOW_BALL, STRENGTH, IRON_TAIL, SLEEP_TALK, SWAGGER	; end
