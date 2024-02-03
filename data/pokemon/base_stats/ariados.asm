	db ARIADOS ; 168

	db  70,  90,  70,  40,  60,  60
	;   hp  atk  def  spd  sat  sdf

	db BUG, DARK ; type
	db 90 ; catch rate
	db 134 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 15 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/ariados/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
    tmhm  TOXIC,BATON_PASS, HYPER_BEAM, RETURN, FLASH, DOUBLE_TEAM, SNORE,GROWTH, FAINT_ATTACK, ATTRACT, SUNNY_DAY, GIGA_DRAIN, REST, THIEF, SLUDGE_BOMB,PSYBEAM, ENDURE, SOLARBEAM, PROTECT, FRUSTRATION, CURSE, HIDDEN_POWER, PSYCHIC_M,PURSUIT, DIG, SLEEP_TALK, SWAGGER	; end
