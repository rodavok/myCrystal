	db DUNSPARCE ; 206

	db 100,  70,  70,  45,  65,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 190 ; catch rate
	db 75 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/dunsparce/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm  ROCK_SMASH, TOXIC, RETURN,BITE, THUNDER, PSYCH_UP, ZAP_CANNON, DREAM_EATER, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST, THIEF, FLAMETHROWER, THUNDERBOLT,ANCIENTPOWER, ENDURE, RAIN_DANCE, SOLARBEAM, NIGHTMARE, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, ROLLOUT, HIDDEN_POWER, DEFENSE_CURL,ROCK_SLIDE, HEADBUTT, STRENGTH, IRON_TAIL, DIG, SLEEP_TALK, SWAGGER	; end
