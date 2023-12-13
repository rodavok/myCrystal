	db VAPOREON ; 134

	db 130,  65,  60,  65, 110,  95
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 45 ; catch rate
	db 196 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	;db 100 ; unknown 1
	db 35 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/vaporeon/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm  SURF,REFLECT, TOXIC, WATERFALL,SWIFT, HYPER_BEAM, RETURN, ROAR, ICE_BEAM, DOUBLE_TEAM, SNORE,GROWTH, ATTRACT, SUNNY_DAY, REST,BODY_SLAM,HYPER_BEAM, SWIFT, ENDURE, WHIRLPOOL, RAIN_DANCE,BUBBLEBEAM, MUD_SLAP, PROTECT, FRUSTRATION, CURSE,SKULL_BASH, HIDDEN_POWER, ICY_WIND,CHARM, HEADBUTT, DETECT, SHADOW_BALL, IRON_TAIL, BLIZZARD, SLEEP_TALK,ICE_BEAM,BLIZZARD, SWAGGER, BITE, BATON_PASS	; end
