	db PINSIR ; 127

	db  65, 125, 100,  85,  55,  70
	;   hp  atk  def  spd  sat  sdf

	db BUG, BUG ; type
	db 45 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 25 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/pinsir/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
    tmhm  ROCK_SLIDE, DOUBLE_EDGE, TAKE_DOWN, CROSS_CUTTER, CUT, ROCK_SMASH, TOXIC, HYPER_BEAM, RETURN, DOUBLE_TEAM, SNORE,SWORDS_DANCE, ATTRACT, SUNNY_DAY, REST, THIEF,BODY_SLAM,HYPER_BEAM,SUBMISSION, ENDURE, PROTECT, FRUSTRATION, CURSE, HIDDEN_POWER, HEADBUTT, FURY_CUTTER, STRENGTH, SLEEP_TALK, SWAGGER	; end
