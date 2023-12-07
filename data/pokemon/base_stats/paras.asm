	db PARAS ; 046

	db  35,  70,  55,  25,  45,  55
	;   hp  atk  def  spd  sat  sdf

	db BUG, GRASS ; type
	db 190 ; catch rate
	db 70 ; base exp
	db TINYMUSHROOM, BIG_MUSHROOM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/paras/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_PLANT ; egg groups

	; tm/hm learnset
    tmhm  CUT, ROCK_SMASH,REFLECT, TOXIC, RETURN, FLASH,COUNTER, DOUBLE_TEAM, SNORE,MEGA_DRAIN,SWORDS_DANCE, ATTRACT, SUNNY_DAY, GIGA_DRAIN, REST, THIEF,DIG, SLUDGE_BOMB,BODY_SLAM,SCREECH,PSYBEAM,LIGHT_SCREEN, ENDURE,SOLARBEAM, SOLARBEAM, PROTECT,FALSE_SWIPE, FRUSTRATION, CURSE,SKULL_BASH, HIDDEN_POWER, SWEET_SCENT,PURSUIT, FURY_CUTTER, DIG, SLEEP_TALK, SWAGGER	; end
