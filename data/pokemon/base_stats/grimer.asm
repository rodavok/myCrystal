	db GRIMER ; 088

	db  80,  80,  50,  25,  40,  50
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 190 ; catch rate
	db 90 ; base exp
	db NO_ITEM, NUGGET ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/grimer/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
    tmhm THUNDER, TOXIC, ICE_PUNCH, RETURN, THUNDER, ZAP_CANNON, DOUBLE_TEAM, SNORE,MEGA_DRAIN, ATTRACT, SUNNY_DAY, GIGA_DRAIN, REST, THIEF,FIRE_BLAST, FIRE_PUNCH, SLUDGE_BOMB, FLAMETHROWER,BODY_SLAM, THUNDERBOLT, ENDURE,THUNDERBOLT,SELFDESTRUCT, MUD_SLAP, PROTECT, FRUSTRATION, DYNAMICPUNCH, CURSE, HIDDEN_POWER,EXPLOSION, FIRE_BLAST, SLEEP_TALK, THUNDERPUNCH, SWAGGER	; end
