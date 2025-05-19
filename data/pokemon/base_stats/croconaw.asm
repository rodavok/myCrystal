	db CROCONAW ; 159

	db  65,  80,  80,  58,  59,  63
	;   hp  atk  def  spd  sat  sdf

	db WATER, DARK ; type
	db 45 ; catch rate
	db 143 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/croconaw/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	; tm/hm learnset
    tmhm  DRAGON_DANCE, HYDRO_PUMP, CUT, ROCK_SMASH, SURF,HYDRO_PUMP, TOXIC, ICE_PUNCH, RETURN, ROAR,THRASH, ICE_BEAM, DOUBLE_TEAM, BITE, SNORE, ATTRACT, REST,RAZOR_WIND,CRUNCH,SUBMISSION,ANCIENTPOWER, ENDURE, WHIRLPOOL, RAIN_DANCE, MUD_SLAP, PROTECT, FRUSTRATION, DYNAMICPUNCH, CURSE, HIDDEN_POWER, ICY_WIND,ROCK_SLIDE, HEADBUTT, DETECT, FURY_CUTTER, STRENGTH, IRON_TAIL, BLIZZARD, DIG, SLEEP_TALK, SWAGGER	; end
