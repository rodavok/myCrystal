	db MACHOKE ; 067

	db  80, 100,  70,  45,  50,  60
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 90 ; catch rate
	db 146 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/machoke/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
    tmhm  ROCK_SMASH, TOXIC, ICE_PUNCH, RETURN,THRASH, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST, THIEF,METRONOME,FIRE_BLAST, FIRE_PUNCH,DIG, EARTHQUAKE, FLAMETHROWER,BODY_SLAM,SUBMISSION,LIGHT_SCREEN, ENDURE, MUD_SLAP, PROTECT,MEDITATE, FRUSTRATION, DYNAMICPUNCH, CURSE, HIDDEN_POWER,EARTHQUAKE,SKULL_BASH,ROCK_SLIDE, FIRE_BLAST, HEADBUTT, DETECT, STRENGTH, DIG, SLEEP_TALK, THUNDERPUNCH, SWAGGER	; end
