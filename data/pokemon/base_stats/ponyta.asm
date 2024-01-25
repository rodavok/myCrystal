	db PONYTA ; 077

	db  50,  85,  55,  90,  65,  65
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 152 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/ponyta/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm DOUBLE_EDGE, TAKE_DOWN, REFLECT, TOXIC,SWIFT, RETURN,THRASH, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST,FIRE_BLAST, FLAMETHROWER,BODY_SLAM, SWIFT,FLAME_WHEEL, ENDURE, PROTECT, FRUSTRATION, CURSE,SKULL_BASH, HIDDEN_POWER,CHARM,HYPNOSIS, FIRE_BLAST,DOUBLE_KICK, HEADBUTT, IRON_TAIL, SLEEP_TALK, SWAGGER	; end
