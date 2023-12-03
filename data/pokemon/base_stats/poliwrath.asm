	db POLIWRATH ; 062

	db  90,  85,  95,  70,  70,  90
	;   hp  atk  def  spd  sat  sdf

	db WATER, FIGHTING ; type
	db 45 ; catch rate
	db 185 ; base exp
	db NO_ITEM, KINGS_ROCK ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/poliwrath/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	; tm/hm learnset
    tmhm  ROCK_SMASH, SURF, TOXIC, ICE_PUNCH, WATERFALL, HYPER_BEAM, RETURN, ICE_BEAM, DOUBLE_TEAM, SNORE,GROWTH, ATTRACT, REST, THIEF,METRONOME,LOVELY_KISS, EARTHQUAKE,BODY_SLAM,HYPER_BEAM,SUBMISSION, ENDURE, WHIRLPOOL, RAIN_DANCE,BUBBLEBEAM, MUD_SLAP, PROTECT,EARTHQUAKE, FRUSTRATION, DYNAMICPUNCH, CURSE, HIDDEN_POWER, ICY_WIND, DEFENSE_CURL,SKULL_BASH, PSYCHIC_M, HEADBUTT, DETECT, STRENGTH, BLIZZARD, SLEEP_TALK,ICE_BEAM,BLIZZARD, SWAGGER	; end
