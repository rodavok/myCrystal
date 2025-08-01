	db RATTATA ; 019

	db  30,  56,  35,  72,  25,  35
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 57 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 15 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/rattata/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm  THUNDER_WAVE, DOUBLE_EDGE, TAKE_DOWN, ROCK_SMASH,THUNDER, TOXIC,SWIFT, RETURN,BITE, THUNDER,COUNTER, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST, THIEF,DIG,BODY_SLAM, SWIFT,SCREECH,FLAME_WHEEL, ENDURE,THUNDERBOLT,BUBBLEBEAM, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, DEFENSE_CURL, HIDDEN_POWER, ICY_WIND,SKULL_BASH,REVERSAL, HEADBUTT, SHADOW_BALL, IRON_TAIL, BLIZZARD, DIG, SLEEP_TALK,BLIZZARD, SWAGGER	; end
