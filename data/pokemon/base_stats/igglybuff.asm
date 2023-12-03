	db IGGLYBUFF ; 174

	db  90,  30,  15,  15,  40,  20
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 170 ; catch rate
	db 39 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	;db 100 ; unknown 1
	db 10 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/igglybuff/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
    tmhm  TOXIC, RETURN, FLASH,PETAL_DANCE, PSYCH_UP, ZAP_CANNON, DREAM_EATER, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST,PRESENT, FLAMETHROWER, ENDURE, RAIN_DANCE, SOLARBEAM, NIGHTMARE, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, ROLLOUT, HIDDEN_POWER, ICY_WIND, DEFENSE_CURL, PSYCHIC_M, FIRE_BLAST, HEADBUTT, DETECT,PERISH_SONG, SHADOW_BALL,FAINT_ATTACK, SLEEP_TALK, SWAGGER	; end
