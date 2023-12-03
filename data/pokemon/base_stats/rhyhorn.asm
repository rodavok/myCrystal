	db RHYHORN ; 111

	db  80,  85,  95,  25,  30,  30
	;   hp  atk  def  spd  sat  sdf

	db GROUND, ROCK ; type
	db 120 ; catch rate
	db 135 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	;db 100 ; unknown 1
	db 20 ; step cycles to hatch
	;db 5 ; unknown 2
	INCBIN "gfx/pokemon/rhyhorn/front.dimensions"
	;dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm  ROCK_SMASH,THUNDER, TOXIC, RETURN, ROAR, THUNDER,COUNTER,THRASH, ZAP_CANNON, ICE_BEAM, DOUBLE_TEAM, SNORE, ATTRACT, SUNNY_DAY, REST,CRUNCH,FIRE_BLAST,DIG, EARTHQUAKE, FLAMETHROWER,BODY_SLAM, THUNDERBOLT, ENDURE,THUNDERBOLT, MUD_SLAP, PROTECT,EARTHQUAKE, FRUSTRATION, CURSE, ROLLOUT, HIDDEN_POWER, ICY_WIND,SKULL_BASH,REVERSAL,PURSUIT,ROCK_SLIDE, FIRE_BLAST, HEADBUTT, STRENGTH, IRON_TAIL, BLIZZARD, DIG, SLEEP_TALK, SANDSTORM, SWAGGER	; end
