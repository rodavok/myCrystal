	db GEODUDE ; 074

	db  40,  80, 100,  20,  30,  30
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GROUND ; type
	db 255 ; catch rate
	db 86 ; base exp
	db NO_ITEM, EVERSTONE ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 15 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/geodude/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
    tmhm  ROCK_SMASH, TOXIC, RETURN, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST,METRONOME,FIRE_BLAST, FIRE_PUNCH,DIG, EARTHQUAKE, FLAMETHROWER,BODY_SLAM,SUBMISSION, ENDURE,SELFDESTRUCT, MUD_SLAP, PROTECT,EARTHQUAKE, FRUSTRATION, ROLLOUT, DYNAMICPUNCH, CURSE, HIDDEN_POWER, DEFENSE_CURL,EXPLOSION,ROCK_SLIDE, FIRE_BLAST, HEADBUTT, STRENGTH, DIG, SLEEP_TALK, SANDSTORM, SWAGGER	; end
