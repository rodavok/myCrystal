	db PIDGEOTTO ; 017

	db  63,  60,  55,  71,  50,  50
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 120 ; catch rate
	db 113 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 15 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/pidgeotto/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
    tmhm DOUBLE_EDGE, TAKE_DOWN, REFLECT, TOXIC,SWIFT, RETURN, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST, THIEF,RAZOR_WIND, SWIFT,SKY_ATTACK, ENDURE, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, HIDDEN_POWER,PURSUIT, DETECT,FAINT_ATTACK, SLEEP_TALK, STEEL_WING, FLY, SWAGGER	; end
