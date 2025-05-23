TreeMons:
; entries correspond to TREEMON_SET_* constants
	table_width 2, TreeMons
	dw TreeMonSet_City
	dw TreeMonSet_Canyon
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	dw TreeMonSet_Rock
	dw TreeMonSet_Burned
	dw TreeMonSet_Dark
	assert_table_length NUM_TREEMON_SETS
	dw TreeMonSet_City ; unused

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_City:
TreeMonSet_Canyon:
; common
	db 50, SPEAROW,    15
	db 15, SPEAROW,    15
	db 15, MURKROW,    15
	db 10, AIPOM,      15
	db  5, AIPOM,      15
	db  5, AIPOM,      15
	db -1
; rare
	db 50, SPEAROW,    15
	db 15, HERACROSS,  15
	db 15, HERACROSS,  15
	db 10, AIPOM,      15
	db  5, AIPOM,      15
	db  5, AIPOM,      15
	db -1

TreeMonSet_Town:
; common
	db 50, SPEAROW,    15
	db 15, EKANS,      15
	db 15, SPEAROW,    15
	db 10, AIPOM,      15
	db  5, AIPOM,      15
	db  5, AIPOM,      15
	db -1
; rare
	db 50, SPEAROW,    15
	db 15, HERACROSS,  15
	db 15, HERACROSS,  15
	db 10, AIPOM,      15
	db  5, AIPOM,      15
	db  5, MURKROW,      15
	db -1

TreeMonSet_Route:
; common
	db 50, HOOTHOOT,   15
	db 15, SPINARAK,   15
	db 15, LEDYBA,     15
	db 10, MURKROW,    15
	db  5, EXEGGCUTE,  15
	db  5, EXEGGCUTE,  15
	db -1
; rare
	db 50, HOOTHOOT,   15
	db 15, PINECO,     15
	db 15, PINECO,     15
	db 10, MURKROW,    15
	db  5, EXEGGCUTE,  15
	db  5, EXEGGCUTE,  15
	db -1

TreeMonSet_Kanto:
; common
	db 50, HOOTHOOT,   15
	db 15, EKANS,      15
	db 15, HOOTHOOT,   15
	db 10, EXEGGCUTE,  15
	db  5, EXEGGCUTE,  15
	db  5, EXEGGCUTE,  15
	db -1
; rare
	db 50, HOOTHOOT,   15
	db 15, PINECO,     15
	db 15, PINECO,     15
	db 10, EXEGGCUTE,  15
	db  5, EXEGGCUTE,  15
	db  5, EXEGGCUTE,  15
	db -1

TreeMonSet_Lake:
; common
	db 50, HOOTHOOT,   15
	db 15, VENONAT,    15
	db 15, HOOTHOOT,   15
	db 10, EXEGGCUTE,  15
	db  5, EXEGGCUTE,  15
	db  5, EXEGGCUTE,  15
	db -1
; rare
	db 50, HOOTHOOT,   15
	db 15, PINECO,     15
	db 15, PINECO,     15
	db 10, EXEGGCUTE,  15
	db  5, EXEGGCUTE,  15
	db  5, EXEGGCUTE,  15
	db -1

TreeMonSet_Forest:
; common
	db 50, HOOTHOOT,   15
	db 15, PINECO,     15
	db 15, PINECO,     15
	db 10, NOCTOWL,    15
	db  5, BUTTERFREE, 15
	db  5, BEEDRILL,   15
	db -1
; rare
	db 50, HOOTHOOT,   15
	db 15, CATERPIE,   15
	db 15, WEEDLE,     15
	db 10, HOOTHOOT,   15
	db  5, METAPOD,    15
	db  5, KAKUNA,     15
	db -1

TreeMonSet_Rock:
	db 40, KRABBY,     18
	db 30, GEODUDE,    18
	db 15, SHUCKLE,    18
	db -1

TreeMonSet_Burned:
	db 70, GEODUDE,    18
	db 30, SLUGMA,     18
	db -1

TreeMonSet_Dark:
	db 95, GEODUDE,    18
	db  5, DUNSPARCE,  18
	db -1
