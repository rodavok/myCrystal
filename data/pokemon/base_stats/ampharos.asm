	db AMPHAROS ; 181

	db  90,  75,  75,  55, 115,  90
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, DRAGON ; type
	db 45 ; catch rate
	db 194 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/ampharos/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm  ROCK_SMASH,REFLECT, DRAGONBREATH, TOXIC, HYPER_BEAM, RETURN, FLASH, THUNDER, ZAP_CANNON, DOUBLE_TEAM, SNORE, ATTRACT, REST, FIRE_PUNCH,BODY_SLAM, SWIFT,SCREECH, THUNDERBOLT, ENDURE,THUNDERBOLT, RAIN_DANCE, PROTECT, FRUSTRATION, DYNAMICPUNCH, CURSE, HIDDEN_POWER, DEFENSE_CURL,TAKE_DOWN, HEADBUTT, STRENGTH, IRON_TAIL, SLEEP_TALK, THUNDERPUNCH, SWAGGER	; end
