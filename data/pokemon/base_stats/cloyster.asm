	db CLOYSTER ; 091

	db  50,  95, 180,  70,  85,  45
	;   hp  atk  def  spd  sat  sdf

	db WATER, ICE ; type
	db 60 ; catch rate
	db 203 ; base exp
	db PEARL, BIG_PEARL ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/cloyster/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
    tmhm TRI_ATTACK, SURF,REFLECT, TOXIC,BARRIER,SWIFT, HYPER_BEAM, AURORA_BEAM, RETURN, ICE_BEAM, DOUBLE_TEAM, SNORE, ATTRACT, REST,BODY_SLAM,HYPER_BEAM, SWIFT,SCREECH, ENDURE, WHIRLPOOL, RAIN_DANCE,SELFDESTRUCT,BUBBLEBEAM, PROTECT, FRUSTRATION, CURSE,EXPLOSION, HIDDEN_POWER, ICY_WIND,TAKE_DOWN, BLIZZARD, SLEEP_TALK,ICE_BEAM,BLIZZARD, SWAGGER	; end
