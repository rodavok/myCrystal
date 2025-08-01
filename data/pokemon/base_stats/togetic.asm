	db TOGETIC ; 176

	db  55,  40,  85,  40,  80, 105
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 75 ; catch rate
	db 114 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	;db 100 ; unknown 1
	db 10 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/togetic/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_FLYING, EGG_FAIRY ; egg groups

	; tm/hm learnset
    tmhm  THUNDER_WAVE, METRONOME, ROCK_SMASH, TOXIC, HYPER_BEAM, TAKE_DOWN, DOUBLE_EDGE, RETURN, FLASH, PSYCH_UP, ZAP_CANNON, DREAM_EATER, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST,PRESENT, FLAMETHROWER, SWIFT, SOFTBOILED,FUTURE_SIGHT, ENDURE, RAIN_DANCE, SOLARBEAM, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, ROLLOUT, HIDDEN_POWER, DEFENSE_CURL, PSYCHIC_M, FIRE_BLAST, HEADBUTT, DETECT, SHADOW_BALL, SLEEP_TALK, STEEL_WING, FLY, SWAGGER	; end
