	db AERODACTYL ; 142

	db  80, 105,  65, 130,  60,  75
	;   hp  atk  def  spd  sat  sdf

	db ROCK, FLYING ; type
	db 45 ; catch rate
	db 202 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	;db 100 ; unknown 1
	db 35 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/aerodactyl/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
    tmhm  ROCK_SLIDE, DOUBLE_EDGE, TAKE_DOWN, ROCK_SMASH,REFLECT, TOXIC,SWIFT, HYPER_BEAM, RETURN, ROAR, DOUBLE_TEAM, SNORE, ATTRACT, REST,RAZOR_WIND,FIRE_BLAST, EARTHQUAKE, FLAMETHROWER,HYPER_BEAM, FLY,DRAGON_RAGE, SWIFT,SKY_ATTACK, ENDURE, RAIN_DANCE, PROTECT, FRUSTRATION, CURSE, HIDDEN_POWER, DRAGONBREATH, FIRE_BLAST, HEADBUTT, DETECT, IRON_TAIL, SLEEP_TALK, STEEL_WING, SANDSTORM, SWAGGER, ANCIENTPOWER	; PURSUIT,end
