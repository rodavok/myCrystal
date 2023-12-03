	db AZUMARILL ; 184

	db 100,  50,  80,  50,  50,  80
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 75 ; catch rate
	db 153 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/azumarill/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_FAIRY ; egg groups

	; tm/hm learnset
    tmhm  ROCK_SMASH, SURF, TOXIC, ICE_PUNCH, WATERFALL, HYPER_BEAM,BELLY_DRUM, RETURN, ICE_BEAM, DOUBLE_TEAM, SNORE, ATTRACT, REST,PRESENT, SWIFT,AMNESIA,FUTURE_SIGHT,LIGHT_SCREEN, ENDURE,SUPERSONIC, WHIRLPOOL, RAIN_DANCE, MUD_SLAP, PROTECT, FRUSTRATION, ROLLOUT, DYNAMICPUNCH, CURSE, HIDDEN_POWER, ICY_WIND, DEFENSE_CURL, HEADBUTT,PERISH_SONG, STRENGTH, IRON_TAIL, BLIZZARD, SLEEP_TALK, SWAGGER	; end
