	db TANGELA ; 114

	db  65,  55, 115,  60, 100,  40
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 166 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/tangela/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
    tmhm  CUT,REFLECT, TOXIC, HYPER_BEAM, RETURN, FLASH, PSYCH_UP, DOUBLE_TEAM, SNORE,MEGA_DRAIN,SWORDS_DANCE, ATTRACT, SUNNY_DAY, GIGA_DRAIN, REST, THIEF, SLUDGE_BOMB,BODY_SLAM,HYPER_BEAM,AMNESIA,PSYBEAM, ENDURE,SOLARBEAM, SOLARBEAM, PROTECT, FRUSTRATION, CURSE,SKULL_BASH, HIDDEN_POWER, SWEET_SCENT,FLAIL, HEADBUTT, SLEEP_TALK, SWAGGER	; end
