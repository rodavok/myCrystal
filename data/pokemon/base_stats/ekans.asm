	db EKANS ; 023

	db  35,  60,  44,  55,  40,  54
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 255 ; catch rate
	db 62 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/ekans/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_DRAGON ; egg groups

	; tm/hm learnset
    tmhm  DOUBLE_EDGE, TAKE_DOWN, TOXIC, RETURN, DOUBLE_TEAM, SNORE,MEGA_DRAIN, ATTRACT, SUNNY_DAY, GIGA_DRAIN, REST, THIEF,CRUNCH,DIG, SLUDGE_BOMB, EARTHQUAKE,BODY_SLAM, ENDURE,BEAT_UP, PROTECT,EARTHQUAKE, FRUSTRATION, CURSE,SKULL_BASH, HIDDEN_POWER,ROCK_SLIDE, HEADBUTT, STRENGTH, DIG, SLEEP_TALK, SWAGGER	;PURSUIT, end
