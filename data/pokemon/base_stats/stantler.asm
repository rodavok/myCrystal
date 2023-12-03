	db STANTLER ; 234

	db  73,  95,  62,  85,  85,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 165 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/stantler/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm REFLECT, TOXIC, RETURN,BITE, ROAR, FLASH, PSYCH_UP, DREAM_EATER, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST, THIEF, EARTHQUAKE, SWIFT,LIGHT_SCREEN, ENDURE, RAIN_DANCE, NIGHTMARE, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, HIDDEN_POWER, PSYCHIC_M, HEADBUTT, DETECT, SLEEP_TALK, SWAGGER	; end
