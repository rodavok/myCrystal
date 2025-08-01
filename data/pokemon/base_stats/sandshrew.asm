	db SANDSHREW ; 027

	db  50,  75,  85,  40,  20,  30
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, GROUND ; type
	db 255 ; catch rate
	db 93 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/sandshrew/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm  DOUBLE_EDGE, TAKE_DOWN, CROSS_CUTTER, CUT, ROCK_SMASH, TOXIC,SWIFT, RETURN,COUNTER, DOUBLE_TEAM, TAKE_DOWN, DOUBLE_EDGE, SNORE,SWORDS_DANCE, ATTRACT, SUNNY_DAY, REST, THIEF,METAL_CLAW,DIG, EARTHQUAKE,BODY_SLAM,SUBMISSION, SWIFT, ENDURE, MUD_SLAP, PROTECT,EARTHQUAKE, FRUSTRATION, ROLLOUT, DYNAMICPUNCH, CURSE, HIDDEN_POWER, DEFENSE_CURL,SKULL_BASH,ROCK_SLIDE, HEADBUTT, DETECT, FURY_CUTTER, STRENGTH, IRON_TAIL, DIG, SLEEP_TALK, SANDSTORM, SWAGGER	; end
