	db SMOOCHUM ; 238

	db  45,  30,  15,  65,  85,  65
	;   hp  atk  def  spd  sat  sdf

	db ICE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 87 ; base exp
	db ICE_BERRY, ICE_BERRY ; items
	db GENDER_F100 ; gender ratio
	;db 100 ; unknown 1
	db 25 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/smoochum/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
    tmhm  METRONOME, TOXIC, ICE_PUNCH, RETURN,PETAL_DANCE, PSYCH_UP, DREAM_EATER, ICE_BEAM, DOUBLE_TEAM, SNORE, ATTRACT, REST, THIEF, ENDURE, RAIN_DANCE, NIGHTMARE,BUBBLEBEAM, MUD_SLAP, PROTECT,MEDITATE, FRUSTRATION, DYNAMICPUNCH, CURSE, HIDDEN_POWER, SWEET_SCENT, ICY_WIND, PSYCHIC_M, SHADOW_BALL, BLIZZARD, SLEEP_TALK, SWAGGER	; end
