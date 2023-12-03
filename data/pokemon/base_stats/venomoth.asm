	db VENOMOTH ; 049

	db  70,  65,  60,  90,  90,  75
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 75 ; catch rate
	db 138 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/venomoth/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
    tmhm REFLECT, TOXIC,BATON_PASS,SWIFT, HYPER_BEAM,GIGA_DRAIN, RETURN, FLASH, DOUBLE_TEAM, SNORE,MEGA_DRAIN, ATTRACT, SUNNY_DAY, GIGA_DRAIN, REST, THIEF,RAZOR_WIND, SLUDGE_BOMB,HYPER_BEAM, SWIFT,SCREECH, ENDURE,SOLARBEAM, SOLARBEAM, PROTECT, FRUSTRATION, CURSE, HIDDEN_POWER, SWEET_SCENT, PSYCHIC_M, SLEEP_TALK, SWAGGER	; end
