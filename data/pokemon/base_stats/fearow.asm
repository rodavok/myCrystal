	db FEAROW ; 022

	db  65,  90,  65, 100,  61,  61
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 90 ; catch rate
	db 162 ; base exp
	db NO_ITEM, SHARP_BEAK ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 15 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/fearow/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
    tmhm TRI_ATTACK, TOXIC,SWIFT, HYPER_BEAM, RETURN, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST, THIEF,RAZOR_WIND,HYPER_BEAM, SWIFT,SKY_ATTACK, ENDURE, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, HIDDEN_POWER, DETECT,FAINT_ATTACK, SLEEP_TALK, STEEL_WING, FLY, SWAGGER	; end
