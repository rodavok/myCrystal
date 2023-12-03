	db EEVEE ; 133

	db  55,  55,  50,  55,  45,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 92 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	;db 100 ; unknown 1
	db 35 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/eevee/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm REFLECT, TOXIC,SWIFT, RETURN, DOUBLE_TEAM, SNORE,GROWTH, ATTRACT, SUNNY_DAY, REST,BODY_SLAM, SWIFT, ENDURE, RAIN_DANCE, MUD_SLAP, PROTECT, FRUSTRATION, CURSE,SKULL_BASH, HIDDEN_POWER,CHARM,FLAIL, HEADBUTT, DETECT, SHADOW_BALL, IRON_TAIL, SLEEP_TALK, SWAGGER	; end
