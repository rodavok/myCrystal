	db LEDIAN ; 166

	db  55,  35,  50,  85,  55, 110
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 90 ; catch rate
	db 134 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 15 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/ledian/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
    tmhm  TOXIC, ICE_PUNCH,BARRIER, HYPER_BEAM, RETURN, FLASH, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, GIGA_DRAIN, REST, THIEF, SWIFT,PSYBEAM,LIGHT_SCREEN, ENDURE, SOLARBEAM, PROTECT, FRUSTRATION, ROLLOUT, DYNAMICPUNCH, CURSE, SWEET_SCENT, HIDDEN_POWER, HEADBUTT, DIG, SLEEP_TALK, THUNDERPUNCH, SWAGGER	; end
