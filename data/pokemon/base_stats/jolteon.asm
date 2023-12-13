	db JOLTEON ; 135

	db  65,  65,  60, 130, 110,  95
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 197 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	;db 100 ; unknown 1
	db 35 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/jolteon/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm THUNDER,REFLECT, TOXIC,SWIFT, HYPER_BEAM, RETURN, ROAR, THUNDER, FLASH, ZAP_CANNON, DOUBLE_TEAM, SNORE,GROWTH, ATTRACT, SUNNY_DAY, REST,BODY_SLAM,HYPER_BEAM, SWIFT, THUNDERBOLT, ENDURE,THUNDERBOLT, RAIN_DANCE, MUD_SLAP, PROTECT, FRUSTRATION, CURSE,SKULL_BASH, HIDDEN_POWER,CHARM,THUNDER_WAVE, HEADBUTT, DETECT, SHADOW_BALL, IRON_TAIL, SLEEP_TALK, SWAGGER, BITE, BATON_PASS	; end
