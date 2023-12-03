	db MUK ; 089

	db 105, 105,  75,  50,  65, 100
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 75 ; catch rate
	db 157 ; base exp
	db NO_ITEM, NUGGET ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/muk/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
    tmhm THUNDER, TOXIC, ICE_PUNCH, HYPER_BEAM, RETURN, THUNDER, ZAP_CANNON, DOUBLE_TEAM, SNORE,MEGA_DRAIN, ATTRACT, SUNNY_DAY, GIGA_DRAIN, REST, THIEF,FIRE_BLAST, FIRE_PUNCH, SLUDGE_BOMB, FLAMETHROWER,BODY_SLAM,HYPER_BEAM, THUNDERBOLT, ENDURE,THUNDERBOLT,SELFDESTRUCT, MUD_SLAP, PROTECT, FRUSTRATION, DYNAMICPUNCH, CURSE, HIDDEN_POWER,EXPLOSION, FIRE_BLAST, SLEEP_TALK, THUNDERPUNCH, SWAGGER	; end
