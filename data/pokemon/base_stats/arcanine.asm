	db ARCANINE ; 059

	db  90, 110,  80,  95, 100,  80
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 75 ; catch rate
	db 213 ; base exp
	db BURNT_BERRY, BURNT_BERRY ; items
	db GENDER_F25 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/arcanine/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm  DOUBLE_EDGE, TAKE_DOWN, ROCK_SMASH,REFLECT, TOXIC,SWIFT, HYPER_BEAM, RETURN, ROAR,THRASH, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST,CRUNCH,FIRE_BLAST,DIG, FLAMETHROWER,BODY_SLAM,HYPER_BEAM,DRAGON_RAGE, SWIFT,FLAME_WHEEL, ENDURE, PROTECT, FRUSTRATION, CURSE,SKULL_BASH, HIDDEN_POWER, DRAGONBREATH, FIRE_BLAST, HEADBUTT, IRON_TAIL, DIG, SLEEP_TALK, SWAGGER,TELEPORT	; end
