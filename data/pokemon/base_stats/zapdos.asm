	db ZAPDOS ; 145

	db  90,  90,  85, 100, 125,  90
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, FLYING ; type
	db 3 ; catch rate
	db 216 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	;db 100 ; unknown 1
	db 80 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/zapdos/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
    tmhm  DOUBLE_EDGE, TAKE_DOWN, ROCK_SMASH,THUNDER,REFLECT, TOXIC,SWIFT, HYPER_BEAM, RETURN, ROAR, THUNDER, FLASH, ZAP_CANNON, DOUBLE_TEAM, SNORE, SUNNY_DAY, REST,RAZOR_WIND,HYPER_BEAM, FLY, SWIFT,SKY_ATTACK, THUNDERBOLT, ENDURE,THUNDERBOLT, RAIN_DANCE, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, HIDDEN_POWER,THUNDER_WAVE, DETECT, SLEEP_TALK, STEEL_WING, SANDSTORM, SWAGGER, DRILL_PECK, LIGHT_SCREEN	; end
