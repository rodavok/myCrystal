	db CLEFFA ; 173

	db  50,  25,  28,  15,  45,  55
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 150 ; catch rate
	db 37 ; base exp
	db MYSTERYBERRY, MOON_STONE ; items
	db GENDER_F75 ; gender ratio
	;db 100 ; unknown 1
	db 10 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/cleffa/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
    tmhm  TOXIC,BELLY_DRUM, RETURN, FLASH,PETAL_DANCE, PSYCH_UP, ZAP_CANNON, DREAM_EATER, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST,METRONOME,PRESENT, FLAMETHROWER,AMNESIA, SOFTBOILED, ENDURE, RAIN_DANCE, SOLARBEAM, NIGHTMARE, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, ROLLOUT, HIDDEN_POWER, ICY_WIND, DEFENSE_CURL, PSYCHIC_M, FIRE_BLAST, HEADBUTT, DETECT, SHADOW_BALL, IRON_TAIL, SLEEP_TALK, SWAGGER	; end
