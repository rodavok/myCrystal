	db KINGLER ; 099

	db  55, 130, 115,  75,  50,  50
	;   hp  atk  def  spd  sat  sdf

	db WATER, GROUND ; type
	db 60 ; catch rate
	db 206 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/kingler/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
    tmhm  CROSS_CUTTER, CUT, ROCK_SMASH, SURF, TOXIC, HYPER_BEAM, RETURN, METAL_CLAW,  ICE_BEAM, DOUBLE_TEAM, SNORE,SWORDS_DANCE, ATTRACT, REST, THIEF,DIG,BODY_SLAM,HYPER_BEAM,AMNESIA, ENDURE, WHIRLPOOL, RAIN_DANCE,BUBBLEBEAM, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, HIDDEN_POWER, ICY_WIND, FURY_CUTTER, STRENGTH, BLIZZARD, SLEEP_TALK,ICE_BEAM,BLIZZARD, SWAGGER	; end
