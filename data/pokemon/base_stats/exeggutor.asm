	db EXEGGUTOR ; 103

	db  95,  95,  85,  55, 125,  75
	;   hp  atk  def  spd  sat  sdf

	db GRASS, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 212 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/exeggutor/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
    tmhm DOUBLE_EDGE, TAKE_DOWN, REFLECT, TOXIC, HYPER_BEAM, RETURN, FLASH, PSYCH_UP, DREAM_EATER, DOUBLE_TEAM, SNORE,MEGA_DRAIN, ATTRACT, SUNNY_DAY, GIGA_DRAIN, REST, THIEF, SLUDGE_BOMB,HYPER_BEAM,ANCIENTPOWER, ENDURE,SOLARBEAM, NIGHTMARE, SOLARBEAM,SELFDESTRUCT, PROTECT,SYNTHESIS, FRUSTRATION, CURSE, ROLLOUT, HIDDEN_POWER,EXPLOSION, PSYCHIC_M, HEADBUTT, STRENGTH, SLEEP_TALK,MOONLIGHT, SWAGGER, TELEPORT	; end
