	db SEEL ; 086

	db  65,  45,  55,  45,  45,  70
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 190 ; catch rate
	db 100 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/seel/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm  AQUA_RING, WEATHER_BALL, SURF, TOXIC, WATERFALL, RETURN, ICE_BEAM, AURORA_BEAM, DOUBLE_TEAM, SNORE, ATTRACT, REST,BODY_SLAM, ENDURE, WHIRLPOOL, RAIN_DANCE,BUBBLEBEAM, PROTECT, FRUSTRATION, CURSE,SKULL_BASH, HIDDEN_POWER, ICY_WIND, HEADBUTT,PERISH_SONG, BLIZZARD, SLEEP_TALK,ICE_BEAM,BLIZZARD, SWAGGER	; end
