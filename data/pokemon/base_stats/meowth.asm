	db MEOWTH ; 052

	db  40,  45,  35,  90,  40,  40
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 69 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/meowth/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm PAY_DAY, DOUBLE_EDGE, TAKE_DOWN, THUNDER, TOXIC,SWIFT, RETURN, THUNDER, PSYCH_UP, ZAP_CANNON, DREAM_EATER, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST, THIEF,BODY_SLAM, SWIFT,AMNESIA, THUNDERBOLT, ENDURE,THUNDERBOLT, NIGHTMARE,BUBBLEBEAM, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, DEFENSE_CURL, HIDDEN_POWER, ICY_WIND,SKULL_BASH,CHARM,HYPNOSIS, HEADBUTT, DETECT, SHADOW_BALL, IRON_TAIL, SLEEP_TALK, SWAGGER	; end
