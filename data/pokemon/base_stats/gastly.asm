	db GASTLY ; 092

	db  30,  35,  30,  80, 100,  35
	;   hp  atk  def  spd  sat  sdf

	db GHOST, POISON ; type
	db 190 ; catch rate
	db 95 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/gastly/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
    tmhm THUNDER, TOXIC, RETURN, THUNDER, PSYCH_UP, ZAP_CANNON, DREAM_EATER, DOUBLE_TEAM, SNORE,MEGA_DRAIN, ATTRACT, SUNNY_DAY, GIGA_DRAIN, REST, THIEF, SLUDGE_BOMB,DREAM_EATER, THUNDERBOLT,PSYBEAM, ENDURE,THUNDERBOLT, RAIN_DANCE, NIGHTMARE,SELFDESTRUCT, PROTECT, FRUSTRATION, CURSE,EXPLOSION, HIDDEN_POWER, PSYCHIC_M,PERISH_SONG, SHADOW_BALL, SLEEP_TALK, SWAGGER	; end
