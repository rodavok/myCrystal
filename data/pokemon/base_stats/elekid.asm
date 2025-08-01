	db ELEKID ; 239

	db  45,  63,  37,  95,  65,  55
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, FIGHTING ; type
	db 45 ; catch rate
	db 106 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	;db 100 ; unknown 1
	db 25 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/elekid/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
    tmhm  THUNDER_WAVE, TOXIC, ICE_PUNCH,BARRIER, RETURN, FLASH, THUNDER, ZAP_CANNON, DOUBLE_TEAM, SNORE, ATTRACT, REST, THIEF, FIRE_PUNCH, SWIFT, THUNDERBOLT, ENDURE, RAIN_DANCE, MUD_SLAP, PROTECT,MEDITATE, FRUSTRATION, DYNAMICPUNCH, CURSE, HIDDEN_POWER,CROSS_CHOP, PSYCHIC_M, HEADBUTT, DETECT, SLEEP_TALK, THUNDERPUNCH, SWAGGER	; end
