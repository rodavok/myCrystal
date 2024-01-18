	db MISDREAVUS ; 200

	db  60,  60,  60,  85,  85,  85
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GHOST ; type
	db 45 ; catch rate
	db 147 ; base exp
	db NO_ITEM, SPELL_TAG ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 25 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/misdreavus/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
    tmhm  TOXIC, RETURN, PSYBEAM, FLASH, THUNDER, PSYCH_UP, ZAP_CANNON, DREAM_EATER, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST, THIEF, SWIFT,SCREECH, THUNDERBOLT, ENDURE, RAIN_DANCE, NIGHTMARE, PROTECT, FRUSTRATION, CURSE, DEFENSE_CURL, HIDDEN_POWER, PSYCHIC_M,HYPNOSIS, HEADBUTT, SHADOW_BALL, SLEEP_TALK, SWAGGER	; end
