	db XATU ; 178

	db  65,  75,  70,  95,  95,  70
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, FLYING ; type
	db 75 ; catch rate
	db 171 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/xatu/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
    tmhm  BATON_PASS, DOUBLE_EDGE, THUNDER_WAVE, SKY_ATTACK, TOXIC, PSYBEAM, HYPER_BEAM, RETURN, FLASH, PSYCH_UP, DREAM_EATER, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, GIGA_DRAIN, REST, THIEF, SWIFT,STEEL_WING, ENDURE,DRILL_PECK, NIGHTMARE, SOLARBEAM, PROTECT, FRUSTRATION, CURSE, HIDDEN_POWER, PSYCHIC_M, DETECT,FAINT_ATTACK, SLEEP_TALK, FLY, SWAGGER	; end
