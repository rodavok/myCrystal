	db BUTTERFREE ; 012

	db  60,  45,  50,  70,  80,  80
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 45 ; catch rate
	db 160 ; base exp
	db NO_ITEM, SILVERPOWDER ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 15 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/butterfree/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
    tmhm REFLECT, TOXIC,SWIFT, HYPER_BEAM, RETURN, FLASH, DOUBLE_TEAM, SNORE,MEGA_DRAIN, ATTRACT, SUNNY_DAY, GIGA_DRAIN, REST,RAZOR_WIND,HYPER_BEAM, SWIFT, ENDURE,SOLARBEAM, NIGHTMARE, SOLARBEAM, PROTECT, FRUSTRATION, CURSE, HIDDEN_POWER, SWEET_SCENT, PSYCHIC_M, SLEEP_TALK, SWAGGER, TELEPORT	; end
