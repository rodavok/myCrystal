	db HORSEA ; 116

	db  30,  40,  70,  60,  70,  25
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 225 ; catch rate
	db 83 ; base exp
	db NO_ITEM, DRAGON_SCALE ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/horsea/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	; tm/hm learnset
    tmhm  SURF, TOXIC, WATERFALL,SWIFT, RETURN, ICE_BEAM, DOUBLE_TEAM, SNORE, ATTRACT, REST,DRAGON_RAGE, SWIFT, ENDURE, WHIRLPOOL, RAIN_DANCE,BUBBLEBEAM, PROTECT, FRUSTRATION, CURSE,AURORA_BEAM, HIDDEN_POWER, ICY_WIND,SKULL_BASH, DRAGONBREATH, HEADBUTT, BLIZZARD, SLEEP_TALK,ICE_BEAM,BLIZZARD, SWAGGER	; end
