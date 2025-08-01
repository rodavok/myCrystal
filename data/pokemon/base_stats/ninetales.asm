	db NINETALES ; 038

	db  73,  76,  75, 100,  81, 100
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 75 ; catch rate
	db 178 ; base exp
	db BURNT_BERRY, BURNT_BERRY ; items
	db GENDER_F75 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/ninetales/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm DOUBLE_EDGE, TAKE_DOWN, REFLECT, TOXIC,SWIFT, HYPER_BEAM, RETURN, ROAR, DOUBLE_TEAM, SNORE, FLAME_WHEEL, ATTRACT, SUNNY_DAY, REST,FIRE_BLAST,DIG, FLAMETHROWER,BODY_SLAM,HYPER_BEAM, SWIFT, ENDURE, PROTECT, FRUSTRATION, CURSE,SKULL_BASH, HIDDEN_POWER,HYPNOSIS, FIRE_BLAST, HEADBUTT, IRON_TAIL, DIG,FAINT_ATTACK, SLEEP_TALK, SWAGGER	; end
