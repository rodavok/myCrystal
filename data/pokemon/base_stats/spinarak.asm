	db SPINARAK ; 167

	db  40,  60,  40,  30,  40,  40
	;   hp  atk  def  spd  sat  sdf

	db BUG, DARK ; type
	db 255 ; catch rate
	db 54 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 15 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/spinarak/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
    tmhm  CROSS_CUTTER, TOXIC,BATON_PASS, RETURN, FLASH, DOUBLE_TEAM, SNORE,GROWTH, ATTRACT, FAINT_ATTACK, SUNNY_DAY, GIGA_DRAIN, REST, THIEF, SLUDGE_BOMB,PSYBEAM, ENDURE, SOLARBEAM, PROTECT, FRUSTRATION, CURSE, HIDDEN_POWER, PSYCHIC_M, DIG, SLEEP_TALK, SWAGGER	; PURSUIT,end
