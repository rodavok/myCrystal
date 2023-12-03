	db BEEDRILL ; 015

	db  65,  80,  40,  75,  45,  80
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 45 ; catch rate
	db 159 ; base exp
	db NO_ITEM, POISON_BARB ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 15 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/beedrill/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
    tmhm  CUT,REFLECT, TOXIC,SWIFT, HYPER_BEAM, RETURN, DOUBLE_TEAM, SNORE,MEGA_DRAIN,SWORDS_DANCE, ATTRACT, SUNNY_DAY, GIGA_DRAIN, REST, SLUDGE_BOMB,HYPER_BEAM, SWIFT, ENDURE, PROTECT, FRUSTRATION, CURSE,SKULL_BASH, HIDDEN_POWER, SWEET_SCENT, FURY_CUTTER, SLEEP_TALK, SWAGGER	; end
