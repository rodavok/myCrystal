	db ARTICUNO ; 144

	db  90,  85, 100,  85,  95, 125
	;   hp  atk  def  spd  sat  sdf

	db ICE, FLYING ; type
	db 3 ; catch rate
	db 215 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	;db 100 ; unknown 1
	db 80 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/articuno/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
    tmhm  ROCK_SMASH,REFLECT, TOXIC,SWIFT, HYPER_BEAM, RETURN, ROAR, ICE_BEAM, DOUBLE_TEAM, SNORE, SUNNY_DAY, REST,RAZOR_WIND,HYPER_BEAM, FLY, SWIFT,SKY_ATTACK, ENDURE, RAIN_DANCE,BUBBLEBEAM, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, HIDDEN_POWER, ICY_WIND, DETECT, BLIZZARD, SLEEP_TALK,ICE_BEAM,BLIZZARD, STEEL_WING, SANDSTORM, SWAGGER	; end
