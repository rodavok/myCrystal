	db TYRANITAR ; 248

	db 100, 134, 110,  61,  95, 100
	;   hp  atk  def  spd  sat  sdf

	db ROCK, DARK ; type
	db 45 ; catch rate
	db 218 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 40 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/tyranitar/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
    tmhm  THUNDER_WAVE, ROCK_SLIDE, DRAGON_DANCE, CRUNCH, CUT, ROCK_SMASH, SURF, TOXIC, HYPER_BEAM, RETURN, ROAR, ICE_BEAM, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST, FIRE_PUNCH, EARTHQUAKE, FLAMETHROWER,OUTRAGE, THUNDERBOLT,ANCIENTPOWER, ENDURE, RAIN_DANCE, NIGHTMARE, MUD_SLAP, PROTECT, FRUSTRATION, DYNAMICPUNCH, CURSE, HIDDEN_POWER, DRAGONBREATH, FIRE_BLAST, HEADBUTT, DETECT, FURY_CUTTER, STRENGTH, IRON_TAIL, DIG, SLEEP_TALK, SANDSTORM, SWAGGER	;PURSUIT, end
