	db VOLTORB ; 100

	db  40,  30,  50, 100,  55,  55
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 103 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/voltorb/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
    tmhm THUNDER,REFLECT, TOXIC,SWIFT, RETURN, FLASH, THUNDER, ZAP_CANNON, DOUBLE_TEAM, SNORE, REST, SWIFT, THUNDERBOLT, ENDURE,THUNDERBOLT, RAIN_DANCE,SELFDESTRUCT, PROTECT, FRUSTRATION, CURSE, ROLLOUT, HIDDEN_POWER,EXPLOSION,THUNDER_WAVE, HEADBUTT, SLEEP_TALK, SWAGGER	; end
