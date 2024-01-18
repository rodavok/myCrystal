	db STARMIE ; 121

	db  60,  75,  85, 115, 100,  85
	;   hp  atk  def  spd  sat  sdf

	db WATER, PSYCHIC_TYPE ; type
	db 60 ; catch rate
	db 207 ; base exp
	db STARDUST, STAR_PIECE ; items
	db GENDER_UNKNOWN ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/starmie/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
    tmhm TRI_ATTACK, SURF,THUNDER,REFLECT, TOXIC, WATERFALL,SWIFT, HYPER_BEAM, RETURN, FLASH, THUNDER, PSYCH_UP, ZAP_CANNON, DREAM_EATER, ICE_BEAM, DOUBLE_TEAM, SNORE, ATTRACT, REST,HYPER_BEAM, SWIFT, THUNDERBOLT, ENDURE,THUNDERBOLT, WHIRLPOOL, RAIN_DANCE, NIGHTMARE,BUBBLEBEAM, PROTECT, FRUSTRATION, CURSE,SKULL_BASH, HIDDEN_POWER, ICY_WIND,THUNDER_WAVE, PSYCHIC_M, BLIZZARD, SLEEP_TALK,ICE_BEAM,BLIZZARD, SWAGGER, TELEPORT	; end
