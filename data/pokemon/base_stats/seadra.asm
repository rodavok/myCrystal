	db SEADRA ; 117

	db  55,  65,  95,  85,  95,  45
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 75 ; catch rate
	db 155 ; base exp
	db NO_ITEM, DRAGON_SCALE ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/seadra/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	; tm/hm learnset
    tmhm  DRAGON_DANCE, HYDRO_PUMP, SURF, TOXIC, WATERFALL,SWIFT, HYPER_BEAM, RETURN, ICE_BEAM, DOUBLE_TEAM, SNORE, ATTRACT, REST,HYPER_BEAM,DRAGON_RAGE, SWIFT, ENDURE, WHIRLPOOL, RAIN_DANCE,BUBBLEBEAM, PROTECT, FRUSTRATION, CURSE,AURORA_BEAM, HIDDEN_POWER, ICY_WIND,SKULL_BASH, DRAGONBREATH, HEADBUTT, BLIZZARD, SLEEP_TALK,ICE_BEAM,BLIZZARD, SWAGGER	; end
