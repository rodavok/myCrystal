	db CORSOLA ; 222

	db  55,  55,  85,  35,  65,  85
	;   hp  atk  def  spd  sat  sdf

	db WATER, ROCK ; type
	db 60 ; catch rate
	db 113 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/corsola/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	; tm/hm learnset
    tmhm  AQUA_RING, ROCK_SMASH, SURF, TOXIC, RETURN, ICE_BEAM, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST, EARTHQUAKE,SCREECH,AMNESIA, ENDURE, WHIRLPOOL, RAIN_DANCE, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, ROLLOUT, HIDDEN_POWER, DEFENSE_CURL, PSYCHIC_M,ROCK_SLIDE, HEADBUTT, STRENGTH, SLEEP_TALK, SANDSTORM, SWAGGER, BUBBLEBEAM, ANCIENTPOWER	; end
