	db FERALIGATR ; 160

	db  85, 105, 100,  78,  79,  83
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 45 ; catch rate
	db 210 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/feraligatr/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	; tm/hm learnset
    tmhm HYDRO_PUMP, CUT, ROCK_SMASH, SURF,HYDRO_PUMP, TOXIC, ICE_PUNCH, HYPER_BEAM, RETURN, ROAR,THRASH, BITE, ICE_BEAM, DOUBLE_TEAM, SNORE, ATTRACT, REST,RAZOR_WIND,CRUNCH, EARTHQUAKE,SUBMISSION,ANCIENTPOWER, ENDURE, WHIRLPOOL, RAIN_DANCE, MUD_SLAP, PROTECT, FRUSTRATION, DYNAMICPUNCH, CURSE, HIDDEN_POWER, ICY_WIND,ROCK_SLIDE, HEADBUTT, DETECT, FURY_CUTTER, STRENGTH, IRON_TAIL, DIG, BLIZZARD, SLEEP_TALK, SWAGGER	; end
