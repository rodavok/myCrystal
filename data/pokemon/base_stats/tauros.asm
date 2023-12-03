	db TAUROS ; 128

	db  75, 100,  95, 110,  40,  70
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 211 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/tauros/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm  ROCK_SMASH, SURF,THUNDER, TOXIC, HYPER_BEAM, RETURN, THUNDER, ZAP_CANNON, ICE_BEAM, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST,FIRE_BLAST, EARTHQUAKE, FLAMETHROWER,BODY_SLAM,HYPER_BEAM, THUNDERBOLT, ENDURE,THUNDERBOLT, PROTECT,EARTHQUAKE, FRUSTRATION, CURSE,SKULL_BASH, HIDDEN_POWER, ICY_WIND, FIRE_BLAST, HEADBUTT, STRENGTH, IRON_TAIL, BLIZZARD, SLEEP_TALK,ICE_BEAM,BLIZZARD, SWAGGER	; end
