	db MACHOP ; 066

	db  70,  80,  50,  35,  35,  35
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 180 ; catch rate
	db 88 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/machop/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
    tmhm  ROCK_SMASH, TOXIC, ICE_PUNCH, RETURN,THRASH, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST, THIEF,METRONOME,FIRE_BLAST, FIRE_PUNCH,DIG, EARTHQUAKE, FLAMETHROWER,BODY_SLAM,SUBMISSION,LIGHT_SCREEN, ENDURE, MUD_SLAP, PROTECT,MEDITATE, FRUSTRATION, DYNAMICPUNCH, CURSE, HIDDEN_POWER,EARTHQUAKE,FALSE_SWIPE,SKULL_BASH,ROCK_SLIDE, FIRE_BLAST, HEADBUTT, DETECT, STRENGTH, DIG, SLEEP_TALK, THUNDERPUNCH, SWAGGER	; end
