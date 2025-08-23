	db NYQWIL ; 212

	db  85,  105,  95,  85,  65,  65
	;   hp  atk  def  spd  sat  sdf

	db DARK, POISON ; type
	db 45 ; catch rate
	db 155 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/nyqwil/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
    tmhm  PAIN_SPLIT, SWORDS_DANCE, EXPLOSION, SELFDESTRUCT, HYDRO_PUMP, SURF, TOXIC, WATERFALL, RETURN, FAINT_ATTACK, BITE, CRUNCH, ICE_BEAM, BEAT_UP, DOUBLE_TEAM, SNORE, ATTRACT, REST, SLUDGE_BOMB, SWIFT, ENDURE,SUPERSONIC, WHIRLPOOL, RAIN_DANCE,BUBBLEBEAM, PROTECT, FRUSTRATION, CURSE, ROLLOUT, HIDDEN_POWER, ICY_WIND, DEFENSE_CURL, HEADBUTT, BLIZZARD, SLEEP_TALK, SWAGGER	; end
