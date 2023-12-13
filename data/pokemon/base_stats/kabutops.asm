	db KABUTOPS ; 141

	db  60, 115, 105,  80,  65,  70
	;   hp  atk  def  spd  sat  sdf

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 201 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	;db 100 ; unknown 1
	db 30 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/kabutops/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	; tm/hm learnset
    tmhm  CUT, ROCK_SMASH, SURF,REFLECT, TOXIC, HYPER_BEAM, RETURN, ICE_BEAM, DOUBLE_TEAM, SNORE,MEGA_DRAIN,SWORDS_DANCE, ATTRACT, GIGA_DRAIN, REST, THIEF,RAZOR_WIND,DIG,BODY_SLAM,HYPER_BEAM,SUBMISSION, ENDURE, WHIRLPOOL, RAIN_DANCE,BUBBLEBEAM, PROTECT, FRUSTRATION, CURSE, ROLLOUT, HIDDEN_POWER, ICY_WIND,AURORA_BEAM,SKULL_BASH, HEADBUTT, FURY_CUTTER, BLIZZARD, SLEEP_TALK,ICE_BEAM,BLIZZARD, SANDSTORM, SWAGGER, ANCIENTPOWER	; end
