	object_const_def
	const CERULEAN_CAVE_B3F_POKEBALL1
	const CERULEAN_CAVE_B3F_POKEBALL2
	const CERULEAN_CAVE_B3F_POKEBALL3

CeruleanCaveB3F_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanCaveB3FFullRestore:
	itemball FULL_RESTORE

CeruleanCaveB3FPPUp:
	itemball PP_UP

CeruleanCaveB3FUltraBall:
	itemball ULTRA_BALL

CeruleanCaveB3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 29,  1, CERULEAN_CAVE_B2F, 2
	warp_event 22,  6, CERULEAN_CAVE_B2F, 3
	warp_event 19,  7, CERULEAN_CAVE_B2F, 4
	warp_event  9,  1, CERULEAN_CAVE_B2F, 5
	warp_event  1,  3, CERULEAN_CAVE_B2F, 6
	warp_event  3, 11, CERULEAN_CAVE_B2F, 7

	def_coord_events

	def_bg_events

	def_object_events
    object_event 11,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB3FFullRestore, EVENT_CERULEAN_CAVE_B3F_FULL_RESTORE
	object_event 29,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB3FPPUp, EVENT_CERULEAN_CAVE_B3F_PP_UP
	object_event  4, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB3FUltraBall, EVENT_CERULEAN_CAVE_B3F_ULTRA_BALL
