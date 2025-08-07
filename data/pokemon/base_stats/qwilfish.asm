	db QWILFISH ; 211

	db  65,  95,  85,  85,  55,  55
	;   hp  atk  def  spd  sat  sdf

	db WATER, POISON ; type
	db 45 ; catch rate
	db 100 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/qwilfish/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
    tmhm  THUNDER_WAVE, SWORDS_DANCE, SELFDESTRUCT, EXPLOSION, HYDRO_PUMP, SURF, TOXIC, WATERFALL, RETURN, ICE_BEAM, DOUBLE_TEAM, SNORE, ATTRACT, REST, SLUDGE_BOMB, SWIFT, ENDURE,SUPERSONIC, WHIRLPOOL, RAIN_DANCE,BUBBLEBEAM, PROTECT, FRUSTRATION, CURSE, ROLLOUT, HIDDEN_POWER, ICY_WIND, DEFENSE_CURL, HEADBUTT, BLIZZARD, SLEEP_TALK, SWAGGER	; end
