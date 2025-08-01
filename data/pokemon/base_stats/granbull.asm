	db GRANBULL ; 210

	db  90, 120,  75,  45,  60,  60
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 75 ; catch rate
	db 178 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/granbull/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
    tmhm  THUNDER_WAVE, ROCK_SLIDE, ROCK_SMASH,HEAL_BELL,REFLECT, TOXIC, ICE_PUNCH, HYPER_BEAM, RETURN, ROAR, THUNDER, ZAP_CANNON, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST, THIEF,CRUNCH,METRONOME, FIRE_PUNCH,LOVELY_KISS, SLUDGE_BOMB,PRESENT, THUNDERBOLT, ENDURE, RAIN_DANCE, MUD_SLAP, PROTECT, FRUSTRATION, DYNAMICPUNCH, CURSE, HIDDEN_POWER, DEFENSE_CURL, HEADBUTT, DETECT, SHADOW_BALL, STRENGTH,FAINT_ATTACK, SLEEP_TALK, THUNDERPUNCH, SWAGGER	; end
