	db POLIWHIRL ; 061

	db  65,  65,  65,  90,  50,  50
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 120 ; catch rate
	db 131 ; base exp
	db NO_ITEM, KINGS_ROCK ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/poliwhirl/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	; tm/hm learnset
    tmhm  HYDRO_PUMP, ROCK_SMASH, SURF, TOXIC, ICE_PUNCH, WATERFALL, RETURN, ICE_BEAM, DOUBLE_TEAM, SNORE,GROWTH, ATTRACT, REST, THIEF,METRONOME,LOVELY_KISS, EARTHQUAKE,BODY_SLAM,SUBMISSION, ENDURE, WHIRLPOOL, RAIN_DANCE,BUBBLEBEAM, MUD_SLAP, PROTECT,EARTHQUAKE, FRUSTRATION, CURSE, DEFENSE_CURL, HIDDEN_POWER, ICY_WIND,SKULL_BASH, PSYCHIC_M, HEADBUTT, DETECT, STRENGTH, BLIZZARD, SLEEP_TALK,ICE_BEAM,BLIZZARD, SWAGGER	; end
