	db SUDOWOODO ; 185

	db  70, 100, 115,  30,  30,  65
	;   hp  atk  def  spd  sat  sdf

	db ROCK, ROCK ; type
	db 65 ; catch rate
	db 135 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/sudowoodo/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
    tmhm  ROCK_SMASH, TOXIC, ICE_PUNCH, RETURN, PSYCH_UP, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST, THIEF, FIRE_PUNCH, EARTHQUAKE, ENDURE,SELFDESTRUCT, MUD_SLAP, PROTECT, FRUSTRATION, ROLLOUT, DYNAMICPUNCH, CURSE, HIDDEN_POWER, DEFENSE_CURL, HEADBUTT, STRENGTH, DIG, SLEEP_TALK, THUNDERPUNCH, SANDSTORM, SWAGGER	; end
