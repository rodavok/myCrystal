	db MOLTRES ; 146

	db  90, 100,  90,  90, 125,  85
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FLYING ; type
	db 3 ; catch rate
	db 217 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	;db 100 ; unknown 1
	db 80 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/moltres/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
    tmhm  DOUBLE_EDGE, TAKE_DOWN, ROCK_SMASH,REFLECT, TOXIC,SWIFT, HYPER_BEAM, RETURN, ROAR, DOUBLE_TEAM, SNORE, SUNNY_DAY, REST,RAZOR_WIND,FIRE_BLAST, FLAMETHROWER,HYPER_BEAM, FLY, SWIFT,SKY_ATTACK, ENDURE, RAIN_DANCE, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, HIDDEN_POWER, FIRE_BLAST, DETECT, SLEEP_TALK, STEEL_WING, SANDSTORM, SWAGGER	; end
