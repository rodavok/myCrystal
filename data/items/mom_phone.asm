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
	momitem    900,   600, MOM_DOLL, DECO_PIKACHU_DOLL
	momitem   4000,   500, MOM_DOLL, DECO_MAGNAPLANT
	momitem   5500,  1000, MOM_DOLL, DECO_PINK_BED
	momitem   7500,   600, MOM_DOLL, DECO_SQUIRTLE_DOLL
	momitem   9000,  3500, MOM_DOLL, DECO_GREEN_CARPET
	momitem  10000,   600, MOM_DOLL, DECO_CHARMANDER_DOLL
	momitem  15000,  3000, MOM_DOLL, DECO_JIGGLYPUFF_POSTER
	momitem  17000,   500, MOM_DOLL, DECO_TROPICPLANT
	momitem  19000,  3500, MOM_DOLL, DECO_BLUE_CARPET
	momitem  21500,   600, MOM_DOLL, DECO_DIGLETT_DOLL
	momitem  23000,   600, MOM_DOLL, DECO_MAGIKARP_DOLL
	momitem  25000,   600, MOM_DOLL, DECO_WEEDLE_DOLL
	momitem  30000,  4800, MOM_DOLL, DECO_CLEFAIRY_DOLL
	momitem  40000,  5000, MOM_DOLL, DECO_RED_CARPET
	momitem  47500,  3000, MOM_DOLL, DECO_CLEFAIRY_POSTER
	momitem  55000,  8000, MOM_DOLL, DECO_SURF_PIKACHU_DOLL
	momitem  65000,  8000, MOM_DOLL, DECO_GENGAR_DOLL
	momitem  75000,  5000, MOM_DOLL, DECO_POLKADOT_BED
	momitem  90000,  3000, MOM_DOLL, DECO_PIKACHU_POSTER
	momitem 100000,  7500, MOM_DOLL, DECO_BIG_SNORLAX_DOLL
	momitem 110000,  1500, MOM_DOLL, DECO_JUMBOPLANT
	momitem 122800,  7500, MOM_DOLL, DECO_BIG_ONIX_DOLL
	momitem 145600,  7500, MOM_DOLL, DECO_BIG_LAPRAS_DOLL
	momitem 168400,  7500, MOM_DOLL, DECO_PIKACHU_BED
.End

	dt 0 ; unused
