	db FLAREON ; 136

	db  65, 130,  60,  65,  95, 110
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 198 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	;db 100 ; unknown 1
	db 35 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/flareon/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm REFLECT, TOXIC,SWIFT, HYPER_BEAM, RETURN, ROAR, ZAP_CANNON, DOUBLE_TEAM, SNORE,GROWTH, ATTRACT, SUNNY_DAY, REST,FIRE_BLAST, FLAMETHROWER,BODY_SLAM,HYPER_BEAM, SWIFT, ENDURE, RAIN_DANCE, MUD_SLAP, PROTECT, FRUSTRATION, CURSE,SKULL_BASH, HIDDEN_POWER,CHARM, FIRE_BLAST, HEADBUTT, DETECT, SHADOW_BALL, IRON_TAIL, SLEEP_TALK, SWAGGER, BITE, BATON_PASS, FLAME_WHEEL	; end
