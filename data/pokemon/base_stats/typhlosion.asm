	db TYPHLOSION ; 157

	db  78,  84,  78, 100, 109,  85
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 209 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/typhlosion/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm  CUT, ROCK_SMASH, TOXIC, HYPER_BEAM, RETURN, ROAR,THRASH, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST, FIRE_PUNCH, EARTHQUAKE, FLAMETHROWER,SUBMISSION, SWIFT, ENDURE, MUD_SLAP, PROTECT, FRUSTRATION, ROLLOUT, DYNAMICPUNCH, CURSE, HIDDEN_POWER, DEFENSE_CURL,REVERSAL, FIRE_BLAST, HEADBUTT, DETECT, FURY_CUTTER, STRENGTH, IRON_TAIL, DIG, SLEEP_TALK, THUNDERPUNCH, SWAGGER	; end
