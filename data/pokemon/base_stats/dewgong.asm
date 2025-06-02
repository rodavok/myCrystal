	db DEWGONG ; 087

	db  90,  70,  80,  70,  70,  95
	;   hp  atk  def  spd  sat  sdf

	db WATER, ICE ; type
	db 75 ; catch rate
	db 176 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/dewgong/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm  PAY_DAY, DRILL_PECK, AQUA_RING, WEATHER_BALL, SURF, TOXIC, WATERFALL, HYPER_BEAM, RETURN, AURORA_BEAM, ICE_BEAM, DOUBLE_TEAM, SNORE, ATTRACT, REST,BODY_SLAM,HYPER_BEAM, ENDURE, WHIRLPOOL, RAIN_DANCE,BUBBLEBEAM, PROTECT, FRUSTRATION, CURSE,SKULL_BASH, HIDDEN_POWER, ICY_WIND, HEADBUTT,PERISH_SONG, BLIZZARD, SLEEP_TALK,ICE_BEAM,BLIZZARD, SWAGGER	; end
