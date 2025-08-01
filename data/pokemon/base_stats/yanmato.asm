	db YANMATO ; 174

	db  86,  76,  86,  95,  116,  56
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 75 ; catch rate
	db 147 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/yanmato/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_DRAGON ; egg groups

	; tm/hm learnset
    tmhm  PSYBEAM, DREAM_EATER, SHADOW_BALL, STEEL_WING, RETURN, FLASH, DOUBLE_TEAM, SNORE, CROSS_CUTTER, ATTRACT, PSYCHIC_M, SUNNY_DAY, HYPNOSIS, GIGA_DRAIN, REST, THIEF, ANCIENTPOWER, SWIFT, ENDURE, SOLARBEAM, PROTECT, FRUSTRATION, CURSE, HIDDEN_POWER,REVERSAL, HEADBUTT, DETECT, SLEEP_TALK, SWAGGER	; end
