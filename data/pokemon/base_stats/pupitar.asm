	db PUPITAR ; 247

	db  70,  84,  70,  51,  65,  70
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 144 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 40 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/pupitar/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
    tmhm  DRAGON_DANCE, CRUNCH, TOXIC, HYPER_BEAM, RETURN, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST, EARTHQUAKE,OUTRAGE,ANCIENTPOWER, ENDURE, RAIN_DANCE, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, HIDDEN_POWER,PURSUIT, HEADBUTT, DETECT, DIG, SLEEP_TALK, SANDSTORM, SWAGGER	; end
