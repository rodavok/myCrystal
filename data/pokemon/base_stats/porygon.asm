	db PORYGON ; 137

	db  65,  60,  70,  40,  85,  75
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 130 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/porygon/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
    tmhm TRI_ATTACK,THUNDER,REFLECT, TOXIC,SWIFT, HYPER_BEAM, RETURN, FLASH, THUNDER, PSYCH_UP, ZAP_CANNON, DREAM_EATER, ICE_BEAM, DOUBLE_TEAM, SNORE, SUNNY_DAY, REST, THIEF,HYPER_BEAM, SWIFT, THUNDERBOLT, ENDURE,THUNDERBOLT, RAIN_DANCE, NIGHTMARE, PROTECT, FRUSTRATION, CURSE,SKULL_BASH, HIDDEN_POWER, ICY_WIND,THUNDER_WAVE, PSYCHIC_M, IRON_TAIL, BLIZZARD, SLEEP_TALK,ICE_BEAM,BLIZZARD, SWAGGER	; end
