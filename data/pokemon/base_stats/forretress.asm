	db FORRETRESS ; 205

	db  75,  90, 140,  40,  60,  60
	;   hp  atk  def  spd  sat  sdf

	db BUG, STEEL ; type
	db 75 ; catch rate
	db 118 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/forretress/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
    tmhm  PAIN_SPLIT, ROCK_SLIDE, SELFDESTRUCT, EXPLOSION, DOUBLE_EDGE, TAKE_DOWN, ROCK_SMASH,REFLECT, TOXIC,SWIFT, HYPER_BEAM, RETURN, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, GIGA_DRAIN, REST, ENDURE, SOLARBEAM, PROTECT, FRUSTRATION, CURSE, ROLLOUT, HIDDEN_POWER, SWEET_SCENT, DEFENSE_CURL, HEADBUTT, STRENGTH, SLEEP_TALK, SANDSTORM, SWAGGER	; end
