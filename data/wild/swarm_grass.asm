; Pokémon swarms in grass

SwarmGrassWildMons:

; Dunsparce swarm
	map_id DARK_CAVE_VIOLET_ENTRANCE
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 3, GEODUDE
	db 3, DUNSPARCE
	db 2, ZUBAT
	db 4, TEDDIURSA
	db 2, DUNSPARCE
	db 4, DUNSPARCE
	db 4, DUNSPARCE
	; day
	db 3, GEODUDE
	db 3, DUNSPARCE
	db 2, ZUBAT
	db 4, LARVITAR
	db 2, DUNSPARCE
	db 4, DUNSPARCE
	db 4, DUNSPARCE
	; nite
	db 3, GEODUDE
	db 3, DUNSPARCE
	db 2, ZUBAT
	db 4, LARVITAR
	db 2, DUNSPARCE
	db 4, DUNSPARCE
	db 4, DUNSPARCE

; Yanma swarm
	map_id ROUTE_35
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 12, NIDORAN_M
	db 12, NIDORAN_F
	db 12, YANMA
	db 14, YANMA
	db 14, PIDGEY
	db 10, DITTO
	db 10, DITTO
	; day
	db 12, NIDORAN_M
	db 12, NIDORAN_F
	db 12, YANMA
	db 14, YANMA
	db 14, PIDGEY
	db 10, DITTO
	db 10, DITTO
	; nite
	db 12, NIDORAN_M
	db 12, NIDORAN_F
	db 12, YANMA
	db 14, YANMA
	db 14, HOOTHOOT
	db 10, DITTO
	db 10, DITTO

; Murkrow Swarm
	map_id ROUTE_38
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 16, RATTATA
	db 16, RATICATE
	db 16, MAGNEMITE
	db 16, PIDGEOTTO
	db 13, TAUROS
	db 13, MILTANK
	db 13, MILTANK
	; day
	db 16, RATTATA
	db 16, RATICATE
	db 16, MAGNEMITE
	db 16, PIDGEOTTO
	db 13, TAUROS
	db 13, MILTANK
	db 13, MILTANK
	; nite
	db 16, MURKROW
	db 16, RATICATE
	db 16, MAGNEMITE
	db 16, NOCTOWL
	db 16, MEOWTH
	db 16, MEOWTH
	db 16, MEOWTH

; Snubbull Swarm
	map_id NATIONAL_PARK
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 14, SNUBBULL
	db 12, NIDORAN_M
	db 12, NIDORAN_F
	db 14, LEDYBA
	db 13, PIDGEY
	db 10, CATERPIE
	db 10, WEEDLE
	; day
	db 14, SNUBBULL
	db 12, NIDORAN_F
	db 12, NIDORAN_M
	db 14, SUNKERN
	db 13, PIDGEY
	db 10, CATERPIE
	db 10, WEEDLE
	; nite
	db 12, SNUBBULL
	db 12, PSYDUCK
	db 13, HOOTHOOT
	db 14, SPINARAK
	db 15, HOOTHOOT
	db 10, VENONAT
	db 12, ODDISH

	db -1 ; end
