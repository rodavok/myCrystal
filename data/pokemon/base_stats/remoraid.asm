	db REMORAID ; 223

	db  35,  65,  35,  65,  65,  35
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 190 ; catch rate
	db 78 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/remoraid/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_2 ; egg groups

	; tm/hm learnset
    tmhm HYDRO_PUMP, SURF, TOXIC, HYPER_BEAM, RETURN, PSYBEAM, ICE_BEAM, DOUBLE_TEAM, SNORE, ATTRACT, REST, THIEF, FLAMETHROWER, SWIFT,AMNESIA,SCREECH, ENDURE,SUPERSONIC, WHIRLPOOL, RAIN_DANCE, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, DEFENSE_CURL, HIDDEN_POWER,AURORA_BEAM, SLEEP_TALK, SWAGGER	; end
