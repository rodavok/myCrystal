	db JYNX ; 124

	db  65,  50,  35,  95, 115,  95
	;   hp  atk  def  spd  sat  sdf

	db ICE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 137 ; base exp
	db ICE_BERRY, ICE_BERRY ; items
	db GENDER_F100 ; gender ratio
	;db 100 ; unknown 1
	db 25 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/jynx/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
    tmhm REFLECT, TOXIC, ICE_PUNCH, HYPER_BEAM, RETURN,PETAL_DANCE, PSYCH_UP, DREAM_EATER, ICE_BEAM, DOUBLE_TEAM, SNORE, ATTRACT, REST, THIEF,METRONOME,BODY_SLAM,HYPER_BEAM,SUBMISSION, ENDURE, RAIN_DANCE, NIGHTMARE,BUBBLEBEAM, MUD_SLAP, PROTECT,MEDITATE, FRUSTRATION, DYNAMICPUNCH, CURSE, HIDDEN_POWER, SWEET_SCENT, ICY_WIND,SKULL_BASH, PSYCHIC_M, HEADBUTT, SHADOW_BALL, BLIZZARD, SLEEP_TALK,ICE_BEAM,BLIZZARD, SWAGGER	; end
