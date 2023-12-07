	db BAYLEEF ; 153

	db  60,  62,  80,  60,  63,  80
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 141 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/bayleef/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
    tmhm  CUT, ROCK_SMASH, TOXIC, RETURN, FLASH,PETAL_DANCE,COUNTER, DOUBLE_TEAM, SNORE,SWORDS_DANCE, ATTRACT, SUNNY_DAY, GIGA_DRAIN, REST,ANCIENTPOWER, ENDURE, SOLARBEAM, MUD_SLAP, PROTECT, FRUSTRATION, CURSE, HIDDEN_POWER, SWEET_SCENT, HEADBUTT, DETECT, FURY_CUTTER, STRENGTH, IRON_TAIL, SLEEP_TALK, SWAGGER	; end
