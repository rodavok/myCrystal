	db AIPOM ; 190

	db  55,  70,  55,  85,  40,  55
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 94 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/aipom/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm  DOUBLE_EDGE, TAKE_DOWN, CUT, ROCK_SMASH, TOXIC, ICE_PUNCH, RETURN, THUNDER,COUNTER, ZAP_CANNON, DREAM_EATER, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST, THIEF, FIRE_PUNCH, SWIFT,SCREECH, THUNDERBOLT, ENDURE, NIGHTMARE,BEAT_UP, MUD_SLAP, PROTECT, FRUSTRATION, DYNAMICPUNCH, CURSE, HIDDEN_POWER, DEFENSE_CURL,PURSUIT, HEADBUTT, DETECT, SHADOW_BALL, FURY_CUTTER, STRENGTH, IRON_TAIL, SLEEP_TALK, THUNDERPUNCH, SWAGGER	; end
