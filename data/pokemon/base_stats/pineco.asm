	db PINECO ; 204

	db  50,  65,  90,  15,  35,  35
	;   hp  atk  def  spd  sat  sdf

	db BUG, BUG ; type
	db 190 ; catch rate
	db 60 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/pineco/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
    tmhm  ROCK_SMASH,REFLECT, TOXIC,SWIFT, RETURN, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, GIGA_DRAIN, REST, ENDURE, SOLARBEAM, PROTECT, FRUSTRATION, CURSE, ROLLOUT, HIDDEN_POWER, SWEET_SCENT, DEFENSE_CURL,FLAIL, HEADBUTT, STRENGTH, SLEEP_TALK, SWAGGER	; end
