	db SANDSLASH ; 028

	db  75, 100, 110,  65,  45,  55
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, GROUND ; type
	db 90 ; catch rate
	db 163 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/sandslash/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm  CUT, ROCK_SMASH, TOXIC,SWIFT, HYPER_BEAM, RETURN,COUNTER, DOUBLE_TEAM, SNORE,SWORDS_DANCE, ATTRACT, SUNNY_DAY, REST, THIEF,METAL_CLAW,DIG, EARTHQUAKE,BODY_SLAM,HYPER_BEAM,SUBMISSION, SWIFT, ENDURE, MUD_SLAP, PROTECT,EARTHQUAKE, FRUSTRATION, ROLLOUT, DYNAMICPUNCH, CURSE, HIDDEN_POWER, DEFENSE_CURL,SKULL_BASH,ROCK_SLIDE, HEADBUTT, DETECT, FURY_CUTTER, STRENGTH, IRON_TAIL, DIG, SLEEP_TALK, SANDSTORM, SWAGGER	; end
