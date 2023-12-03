	db STARYU ; 120

	db  30,  45,  55,  85,  70,  55
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 225 ; catch rate
	db 106 ; base exp
	db STARDUST, STAR_PIECE ; items
	db GENDER_UNKNOWN ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/staryu/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
    tmhm TRI_ATTACK, SURF,THUNDER,REFLECT, TOXIC, WATERFALL,SWIFT, RETURN, FLASH, THUNDER, PSYCH_UP, ZAP_CANNON, ICE_BEAM, DOUBLE_TEAM, SNORE, ATTRACT, REST, SWIFT, THUNDERBOLT, ENDURE,THUNDERBOLT, WHIRLPOOL, RAIN_DANCE,BUBBLEBEAM, PROTECT, FRUSTRATION, CURSE,SKULL_BASH, HIDDEN_POWER, ICY_WIND,THUNDER_WAVE, PSYCHIC_M, BLIZZARD, SLEEP_TALK,ICE_BEAM,BLIZZARD, SWAGGER	; end
