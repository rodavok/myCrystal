	db SWINUB ; 220

	db  50,  50,  40,  50,  30,  30
	;   hp  atk  def  spd  sat  sdf

	db ICE, GROUND ; type
	db 225 ; catch rate
	db 78 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/swinub/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm  ROCK_SLIDE, ROCK_SMASH, TOXIC, RETURN,BITE, ROAR, ICE_BEAM, DOUBLE_TEAM, SNORE, ATTRACT, REST, EARTHQUAKE,BODY_SLAM,ANCIENTPOWER, ENDURE, RAIN_DANCE, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, DEFENSE_CURL, HIDDEN_POWER, ICY_WIND,ROCK_SLIDE,TAKE_DOWN, HEADBUTT, DETECT, STRENGTH, BLIZZARD, SLEEP_TALK, SWAGGER	; end
