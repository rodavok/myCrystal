	db KRABBY ; 098

	db  30, 105,  90,  50,  25,  25
	;   hp  atk  def  spd  sat  sdf

	db WATER, BUG ; type
	db 225 ; catch rate
	db 115 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/krabby/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
    tmhm  CROSS_CUTTER, CUT, ROCK_SMASH, SURF, TOXIC, RETURN, METAL_CLAW, ICE_BEAM, DOUBLE_TEAM, SNORE,SWORDS_DANCE, ATTRACT, REST, THIEF,DIG,BODY_SLAM,AMNESIA, ENDURE, WHIRLPOOL, RAIN_DANCE,BUBBLEBEAM, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, HIDDEN_POWER, ICY_WIND, FURY_CUTTER, STRENGTH, BLIZZARD, SLEEP_TALK,ICE_BEAM,BLIZZARD, SWAGGER	; end
