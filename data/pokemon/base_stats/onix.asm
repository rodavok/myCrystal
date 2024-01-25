	db ONIX ; 095

	db  35,  45, 160,  70,  30,  45
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 108 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 25 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/onix/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
    tmhm  DOUBLE_EDGE, TAKE_DOWN, ROCK_SMASH, TOXIC, RETURN, ROAR, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST,DIG, EARTHQUAKE,BODY_SLAM, ENDURE,SELFDESTRUCT, MUD_SLAP, PROTECT,EARTHQUAKE, FRUSTRATION, CURSE,SKULL_BASH, HIDDEN_POWER,EXPLOSION,ROCK_SLIDE, HEADBUTT, STRENGTH, IRON_TAIL, DIG, SLEEP_TALK, SANDSTORM, SWAGGER	; end
