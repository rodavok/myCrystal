	db CYNDAQUIL ; 155

	db  39,  52,  43,  65,  60,  50
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 65 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/cyndaquil/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm  CUT, TOXIC, RETURN,THRASH, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST, FLAMETHROWER,SUBMISSION, SWIFT, ENDURE, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, ROLLOUT, HIDDEN_POWER, DEFENSE_CURL,REVERSAL, FIRE_BLAST, HEADBUTT, DETECT, IRON_TAIL, DIG, SLEEP_TALK,QUICK_ATTACK, SWAGGER	; end
