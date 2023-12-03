	db NIDORINA ; 030

	db  70,  62,  67,  56,  55,  55
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 120 ; catch rate
	db 117 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F100 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/nidorina/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
    tmhm  ROCK_SMASH,THUNDER,REFLECT, TOXIC, RETURN, THUNDER,COUNTER, ICE_BEAM, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST, THIEF,LOVELY_KISS, SLUDGE_BOMB,BODY_SLAM, THUNDERBOLT, ENDURE,THUNDERBOLT,SUPERSONIC, RAIN_DANCE,BEAT_UP,BUBBLEBEAM, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, DEFENSE_CURL, HIDDEN_POWER,SKULL_BASH,CHARM,TAKE_DOWN, HEADBUTT, DETECT, STRENGTH, IRON_TAIL, BLIZZARD, SLEEP_TALK,ICE_BEAM,BLIZZARD,MOONLIGHT, SWAGGER	; end
