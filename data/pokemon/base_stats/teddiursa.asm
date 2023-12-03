	db TEDDIURSA ; 216

	db  60,  80,  50,  40,  50,  50
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 120 ; catch rate
	db 124 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/teddiursa/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm  CUT, ROCK_SMASH, TOXIC, ICE_PUNCH, RETURN, ROAR,COUNTER, ZAP_CANNON, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST, THIEF,METAL_CLAW,CRUNCH, FIRE_PUNCH, EARTHQUAKE, SWIFT, ENDURE, MUD_SLAP, PROTECT, FRUSTRATION, ROLLOUT, DYNAMICPUNCH, CURSE, HIDDEN_POWER, DEFENSE_CURL,TAKE_DOWN, HEADBUTT, FURY_CUTTER, STRENGTH, DIG, SLEEP_TALK, THUNDERPUNCH, SWAGGER	; end
