	db CLEFAIRY ; 035

	db  70,  45,  48,  35,  60,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 150 ; catch rate
	db 68 ; base exp
	db MYSTERYBERRY, MOON_STONE ; items
	db GENDER_F75 ; gender ratio
	;db 100 ; unknown 1
	db 10 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/clefairy/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	; tm/hm learnset
    tmhm TRI_ATTACK,THUNDER,REFLECT, TOXIC, ICE_PUNCH,BELLY_DRUM, RETURN, FLASH, THUNDER, PSYCH_UP,PETAL_DANCE, ZAP_CANNON, DREAM_EATER, ICE_BEAM, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST,BLIZZARD,METRONOME,FIRE_BLAST, FIRE_PUNCH,PRESENT, FLAMETHROWER,BODY_SLAM,SUBMISSION,AMNESIA, THUNDERBOLT, SOFTBOILED, ENDURE,THUNDERBOLT,SOLARBEAM, RAIN_DANCE, SOLARBEAM, NIGHTMARE,BUBBLEBEAM, MUD_SLAP, PROTECT, FRUSTRATION, ROLLOUT, DYNAMICPUNCH, CURSE, HIDDEN_POWER, DEFENSE_CURL,SKULL_BASH, PSYCHIC_M,THUNDER_WAVE, FIRE_BLAST, HEADBUTT, DETECT, SHADOW_BALL, STRENGTH, IRON_TAIL, BLIZZARD, SLEEP_TALK,ICE_BEAM, THUNDERPUNCH, SWAGGER, TELEPORT	; end
