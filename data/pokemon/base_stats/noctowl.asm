	db NOCTOWL ; 164

	db 100,  50,  50,  70,  86,  96
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 90 ; catch rate
	db 162 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 15 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/noctowl/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
    tmhm  DOUBLE_EDGE, TAKE_DOWN, TOXIC, HYPER_BEAM, RETURN, FLASH, DREAM_EATER, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST, THIEF, SWIFT,SKY_ATTACK, ENDURE,SUPERSONIC, NIGHTMARE, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, HIDDEN_POWER, DETECT,FAINT_ATTACK, SLEEP_TALK, STEEL_WING, FLY, SWAGGER	; end
