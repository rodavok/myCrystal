	db GLIGAR ; 207

	db  65,  75, 105,  85,  35,  65
	;   hp  atk  def  spd  sat  sdf

	db GROUND, FLYING ; type
	db 60 ; catch rate
	db 108 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/gligar/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
    tmhm  ROCK_SLIDE, CROSS_CUTTER, CUT, ROCK_SMASH, TOXIC, RETURN,COUNTER, EARTHQUAKE, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST, THIEF,METAL_CLAW, SLUDGE_BOMB, SWIFT, ENDURE, PROTECT, FRUSTRATION, CURSE, HIDDEN_POWER, HEADBUTT, DETECT, FURY_CUTTER, STRENGTH, IRON_TAIL, SLEEP_TALK, SANDSTORM, SWAGGER, SWORDS_DANCE	; end
