	db SHELLDER ; 090

	db  30,  65, 100,  40,  45,  25
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 190 ; catch rate
	db 97 ; base exp
	db PEARL, BIG_PEARL ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/shellder/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
    tmhm TRI_ATTACK, SURF,REFLECT, TOXIC,BARRIER,SWIFT, RETURN, ICE_BEAM, DOUBLE_TEAM, SNORE, ATTRACT, REST, SWIFT,SCREECH, ENDURE, WHIRLPOOL, RAIN_DANCE,SELFDESTRUCT,BUBBLEBEAM, PROTECT, FRUSTRATION, CURSE,EXPLOSION, HIDDEN_POWER, ICY_WIND,TAKE_DOWN, BLIZZARD, SLEEP_TALK,ICE_BEAM,BLIZZARD, SWAGGER	; end
