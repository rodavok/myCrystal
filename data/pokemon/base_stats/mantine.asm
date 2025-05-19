	db MANTINE ; 226

	db  65,  40,  70,  70,  80, 140
	;   hp  atk  def  spd  sat  sdf

	db WATER, FLYING ; type
	db 25 ; catch rate
	db 168 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 25 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/mantine/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	; tm/hm learnset
    tmhm AQUA_RING, SURF,HYDRO_PUMP, TOXIC, WATERFALL, RETURN, ICE_BEAM, DOUBLE_TEAM, SNORE, ATTRACT, REST, SWIFT, ENDURE, WHIRLPOOL, RAIN_DANCE, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, HIDDEN_POWER, ICY_WIND, HEADBUTT, BLIZZARD, SLEEP_TALK, SWAGGER	; end
