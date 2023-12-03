	db MILTANK ; 241

	db  95,  80, 105, 100,  40,  70
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 200 ; base exp
	db MOOMOO_MILK, MOOMOO_MILK ; items
	db GENDER_F100 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/miltank/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm  ROCK_SMASH, SURF, TOXIC, ICE_PUNCH, HYPER_BEAM, RETURN, THUNDER, PSYCH_UP, ZAP_CANNON, ICE_BEAM, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST, FIRE_PUNCH,PRESENT, EARTHQUAKE, THUNDERBOLT, ENDURE, RAIN_DANCE, MUD_SLAP, PROTECT, FRUSTRATION, ROLLOUT, DYNAMICPUNCH, CURSE, SWEET_SCENT, HIDDEN_POWER, ICY_WIND, DEFENSE_CURL,REVERSAL, HEADBUTT, SHADOW_BALL, STRENGTH, IRON_TAIL, BLIZZARD, SLEEP_TALK, THUNDERPUNCH, SANDSTORM, SWAGGER	; end
