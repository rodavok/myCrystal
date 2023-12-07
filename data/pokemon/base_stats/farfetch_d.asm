	db FARFETCH_D ; 083

	db  52,  65,  55,  60,  58,  62
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 94 ; base exp
	db NO_ITEM, STICK ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/farfetch_d/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm  CUT,REFLECT, TOXIC,SWIFT, RETURN, PSYCH_UP, DOUBLE_TEAM, SNORE,SWORDS_DANCE, ATTRACT, SUNNY_DAY, REST, THIEF,RAZOR_WIND,BODY_SLAM, SWIFT, ENDURE, MUD_SLAP, PROTECT, FRUSTRATION, CURSE,SKULL_BASH, HIDDEN_POWER, HEADBUTT, DETECT, IRON_TAIL, SLEEP_TALK, STEEL_WING, FLY, SWAGGER	; end
