	db TOGEPI ; 175

	db  35,  20,  65,  20,  40,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 190 ; catch rate
	db 74 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	;db 100 ; unknown 1
	db 10 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/togepi/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
    tmhm  ROCK_SMASH, TOXIC, RETURN, FLASH, PSYCH_UP, ZAP_CANNON, DREAM_EATER, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST,PRESENT, FLAMETHROWER, SWIFT, SOFTBOILED,FUTURE_SIGHT, ENDURE, RAIN_DANCE, SOLARBEAM, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, ROLLOUT, HIDDEN_POWER, DEFENSE_CURL, PSYCHIC_M, FIRE_BLAST, HEADBUTT, DETECT, SHADOW_BALL, SLEEP_TALK, SWAGGER, TAKE_DOWN, DOUBLE_EDGE	; end
