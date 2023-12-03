	db MAGBY ; 240

	db  45,  75,  37,  83,  70,  55
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 117 ; base exp
	db BURNT_BERRY, BURNT_BERRY ; items
	db GENDER_F25 ; gender ratio
	;db 100 ; unknown 1
	db 25 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/magby/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
    tmhm  TOXIC,BARRIER, RETURN, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST, THIEF, FIRE_PUNCH, FLAMETHROWER,SCREECH, ENDURE, MUD_SLAP, PROTECT, FRUSTRATION, DYNAMICPUNCH, CURSE, HIDDEN_POWER,CROSS_CHOP, PSYCHIC_M, FIRE_BLAST, HEADBUTT, DETECT, IRON_TAIL, SLEEP_TALK, THUNDERPUNCH, SWAGGER	; end
