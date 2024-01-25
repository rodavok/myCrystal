	db GOLDUCK ; 055

	db  80,  82,  78,  85,  95,  80
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 75 ; catch rate
	db 174 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/golduck/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm HYDRO_PUMP, TRI_ATTACK, ROCK_SMASH, SURF, TOXIC, ICE_PUNCH, WATERFALL,SWIFT, HYPER_BEAM, RETURN,PSYCHIC_M, FLASH,PETAL_DANCE, PSYCH_UP, ICE_BEAM, DOUBLE_TEAM, SNORE, ATTRACT, REST,DIG,BODY_SLAM,HYPER_BEAM,SUBMISSION, SWIFT,PSYBEAM,FUTURE_SIGHT,LIGHT_SCREEN, ENDURE, WHIRLPOOL, RAIN_DANCE,BUBBLEBEAM, MUD_SLAP, PROTECT, FRUSTRATION, DYNAMICPUNCH, CURSE, HIDDEN_POWER, ICY_WIND,SKULL_BASH,CROSS_CHOP,HYPNOSIS, HEADBUTT, FURY_CUTTER, STRENGTH, IRON_TAIL, DIG, BLIZZARD, SLEEP_TALK,ICE_BEAM,BLIZZARD, SWAGGER	; end
