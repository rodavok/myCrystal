	db RAICHU ; 026

	db  60,  90,  55, 100,  90,  80
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 75 ; catch rate
	db 122 ; base exp
	db NO_ITEM, BERRY ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 10 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/raichu/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
    tmhm THUNDER,REFLECT, TOXIC,SWIFT, HYPER_BEAM, RETURN, FLASH, THUNDER,PETAL_DANCE, ZAP_CANNON, DOUBLE_TEAM, SNORE, ATTRACT, REST, THIEF,PRESENT,BODY_SLAM,HYPER_BEAM,SUBMISSION, SWIFT,FLY, THUNDERBOLT, ENDURE,THUNDERBOLT, RAIN_DANCE,LOVELY_KISS, MUD_SLAP, PROTECT, FRUSTRATION, ROLLOUT, DYNAMICPUNCH, CURSE, HIDDEN_POWER, DEFENSE_CURL,SKULL_BASH,REVERSAL,THUNDER_WAVE, HEADBUTT, DETECT, STRENGTH, IRON_TAIL, SLEEP_TALK, THUNDERPUNCH, SWAGGER, FLY, SURF	; end
