	db GOLBAT ; 042

	db  75,  80,  70,  90,  65,  75
	;   hp  atk  def  spd  sat  sdf

	db POISON, FLYING ; type
	db 90 ; catch rate
	db 171 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 15 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/golbat/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
    tmhm  DOUBLE_EDGE, TAKE_DOWN, TOXIC,SWIFT, HYPER_BEAM, RETURN, DOUBLE_TEAM, SNORE,MEGA_DRAIN, ATTRACT, SUNNY_DAY, GIGA_DRAIN, REST, THIEF, SLUDGE_BOMB,HYPER_BEAM, SWIFT, ENDURE, PROTECT, FRUSTRATION, CURSE, HIDDEN_POWER, DETECT,FAINT_ATTACK, SLEEP_TALK, STEEL_WING, SWAGGER	; PURSUIT,end
