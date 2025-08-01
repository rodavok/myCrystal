MACRO momitem
; money to trigger, cost, kind, item
	dt \1
	dt \2
	db \3, \4
ENDM

MomItems_1:
	momitem      0,   600, MOM_ITEM, SUPER_POTION
	momitem      0,    90, MOM_ITEM, ANTIDOTE
	momitem      0,   180, MOM_ITEM, POKE_BALL
	momitem      0,   450, MOM_ITEM, ESCAPE_ROPE
	momitem      0,   500, MOM_ITEM, GREAT_BALL
.End

MomItems_2:
;Single-time prizes that happen when savings reach a certain threshold (col2). Costs (col3)
	momitem   2500,  1000, MOM_DOLL, DECO_PINK_BED
	momitem   5000,   600, MOM_DOLL, DECO_SQUIRTLE_DOLL
	momitem   7500,  1500, MOM_ITEM, MOON_STONE
	momitem  12500,  1000, MOM_DOLL, DECO_CHARMANDER_DOLL
	momitem  15000,  1500, MOM_ITEM, EVERSTONE
	momitem  17000,  3000, MOM_DOLL, DECO_JIGGLYPUFF_POSTER
	momitem  23500,  1000, MOM_DOLL, DECO_DIGLETT_DOLL
	momitem  30000,  1000, MOM_DOLL, DECO_MAGIKARP_DOLL
	momitem  50000,  8000, MOM_DOLL, DECO_PIKACHU_DOLL
	momitem  65000,  8000, MOM_DOLL, DECO_GENGAR_DOLL
	momitem  75000,  5000, MOM_DOLL, DECO_POLKADOT_BED
	momitem 100000,  7500, MOM_DOLL, DECO_BIG_SNORLAX_DOLL
	momitem 250000, 10000, MOM_ITEM, SCOPE_LENS
.End

	dt 0 ; unused


	; Rug Shop
	; db DECO_RED_CARPET ; 7
	; db DECO_BLUE_CARPET ; 8
	; db DECO_YELLOW_CARPET ; 9
	; db DECO_GREEN_CARPET ; a

	; db DECO_VIRTUAL_BOY ; 18

	; Prize for catching unknown
	; db DECO_UNOWN_DOLL ; 2f

	; Hiking Shop (mt ember spa)
	; db DECO_GEODUDE_DOLL ; 30
	; db DECO_MACHOP_DOLL ; 31
	; db DECO_DIGLETT_DOLL ; 26

	; Water Shop (at SS AQUA?)
	; db DECO_TENTACOOL_DOLL ; 32
	; db DECO_STARYU_DOLL ; 27
	; db DECO_SHELLDER_DOLL ; 2b


	; on sevii?
	; db DECO_BIG_ONIX_DOLL ; 1b
	; db DECO_BIG_LAPRAS_DOLL ; 1c

	; Prizes for completing milestones
	; db DECO_GOLD_TROPHY_DOLL ; 33
	; db DECO_SILVER_TROPHY_DOLL ; 34