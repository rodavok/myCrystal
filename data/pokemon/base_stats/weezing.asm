	db WEEZING ; 110

	db  65,  90, 120,  60,  85,  70
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 60 ; catch rate
	db 173 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/weezing/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
    tmhm PAIN_SPLIT, THUNDER, TOXIC, HYPER_BEAM, RETURN, THUNDER, ZAP_CANNON, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST, THIEF,FIRE_BLAST, SLUDGE_BOMB, FLAMETHROWER,HYPER_BEAM,SCREECH, THUNDERBOLT,PSYBEAM, ENDURE,THUNDERBOLT,SELFDESTRUCT, PROTECT, FRUSTRATION, CURSE, ROLLOUT, HIDDEN_POWER,EXPLOSION, FIRE_BLAST, SLEEP_TALK, SWAGGER	; end
