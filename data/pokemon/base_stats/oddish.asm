	db ODDISH ; 043

	db  45,  50,  55,  30,  75,  65
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 255 ; catch rate
	db 78 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/oddish/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
    tmhm  CUT,REFLECT, TOXIC, RETURN, FLASH, DOUBLE_TEAM, SNORE,MEGA_DRAIN,SWORDS_DANCE, ATTRACT, SUNNY_DAY, GIGA_DRAIN, REST, SLUDGE_BOMB, ENDURE,SOLARBEAM, SOLARBEAM, PROTECT,SYNTHESIS, FRUSTRATION, CURSE, HIDDEN_POWER, SWEET_SCENT,FLAIL, SLEEP_TALK, SWAGGER	; end
