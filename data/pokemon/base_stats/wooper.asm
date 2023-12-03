	db WOOPER ; 194

	db  55,  45,  45,  15,  25,  25
	;   hp  atk  def  spd  sat  sdf

	db WATER, GROUND ; type
	db 255 ; catch rate
	db 52 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/wooper/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm  ROCK_SMASH, SURF, TOXIC, ICE_PUNCH,BELLY_DRUM, RETURN, FLASH, ICE_BEAM, DOUBLE_TEAM, SNORE, ATTRACT, REST, SLUDGE_BOMB, EARTHQUAKE,BODY_SLAM,ANCIENTPOWER, ENDURE, WHIRLPOOL, RAIN_DANCE, MUD_SLAP, PROTECT, FRUSTRATION, ROLLOUT, DYNAMICPUNCH, CURSE, HIDDEN_POWER, DEFENSE_CURL, HEADBUTT, IRON_TAIL, DIG, SLEEP_TALK, SANDSTORM, SWAGGER	; end
