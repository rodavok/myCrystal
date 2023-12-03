	db CHARMELEON ; 005

	db  58,  64,  58,  80,  80,  65
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 142 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/charmeleon/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups

	; tm/hm learnset
    tmhm  CUT, ROCK_SMASH,REFLECT, TOXIC,SWIFT,BELLY_DRUM, RETURN,BITE, DOUBLE_TEAM, SNORE,SWORDS_DANCE, ATTRACT, SUNNY_DAY, REST,FIRE_BLAST, FIRE_PUNCH,DIG, FLAMETHROWER,BODY_SLAM,DRAGON_RAGE,SUBMISSION, SWIFT,OUTRAGE,ANCIENTPOWER, ENDURE,BEAT_UP, MUD_SLAP, PROTECT, FRUSTRATION, DYNAMICPUNCH, CURSE, HIDDEN_POWER, DEFENSE_CURL,SKULL_BASH, DRAGONBREATH,ROCK_SLIDE, FIRE_BLAST, HEADBUTT, FURY_CUTTER, STRENGTH, IRON_TAIL, DIG, SLEEP_TALK, SWAGGER	; end
