	db RATICATE ; 020

	db  55,  81,  60,  97,  50,  70
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 116 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 15 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/raticate/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm  CUT, ROCK_SMASH,THUNDER, TOXIC,SWIFT, HYPER_BEAM, RETURN,BITE, ROAR, THUNDER,COUNTER, ICE_BEAM, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST, THIEF,DIG,BODY_SLAM,HYPER_BEAM, SWIFT,SCREECH,FLAME_WHEEL, THUNDERBOLT, ENDURE,THUNDERBOLT,BUBBLEBEAM, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, DEFENSE_CURL, HIDDEN_POWER, ICY_WIND,SKULL_BASH,REVERSAL, HEADBUTT, SHADOW_BALL, STRENGTH, IRON_TAIL, BLIZZARD, DIG, SLEEP_TALK,ICE_BEAM,BLIZZARD, SWAGGER	; end
