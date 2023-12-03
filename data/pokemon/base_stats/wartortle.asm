	db WARTORTLE ; 008

	db  59,  63,  80,  58,  65,  80
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 45 ; catch rate
	db 143 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/wartortle/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	; tm/hm learnset
    tmhm  ROCK_SMASH, SURF,REFLECT, TOXIC, ICE_PUNCH, WATERFALL, RETURN, ICE_BEAM,ZAP_CANNON, DOUBLE_TEAM, SNORE,MIRROR_COAT, ATTRACT, REST,DIG,BODY_SLAM,SUBMISSION,PSYBEAM, ENDURE, WHIRLPOOL, RAIN_DANCE,BUBBLEBEAM, MUD_SLAP, PROTECT, FRUSTRATION, ROLLOUT, DYNAMICPUNCH, CURSE, HIDDEN_POWER, ICY_WIND, DEFENSE_CURL,SKULL_BASH,FLAIL, HEADBUTT, STRENGTH, IRON_TAIL, BLIZZARD, DIG, SLEEP_TALK,ICE_BEAM,BLIZZARD, SWAGGER	; end
