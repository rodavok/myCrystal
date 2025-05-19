	db VICTREEBEL ; 071

	db  80, 105,  65,  70, 100,  60
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 191 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/victreebel/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
    tmhm  WEATHER_BALL, CUT,REFLECT, TOXIC, HYPER_BEAM, GROWTH, RETURN, FLASH, DOUBLE_TEAM, SNORE,MEGA_DRAIN,SWORDS_DANCE, ATTRACT, SUNNY_DAY, GIGA_DRAIN, REST,LOVELY_KISS, SLUDGE_BOMB,BODY_SLAM,HYPER_BEAM, ENDURE,SOLARBEAM, SOLARBEAM, PROTECT,SYNTHESIS, FRUSTRATION, CURSE, HIDDEN_POWER, SWEET_SCENT, SLEEP_TALK, SWAGGER	; end
