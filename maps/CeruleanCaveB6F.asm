	object_const_def
	const CERULEAN_CAVE_6F_POKEBALL1
	const CERULEAN_CAVE_6F_POKEBALL2
	const CERULEAN_CAVE_6F_POKEBALL3
	const CERULEAN_CAVE_6F_POKEBALL4




CeruleanCaveB6F_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanCaveB6FRareCandy:
	itemball RARE_CANDY

CeruleanCaveB6FUltraBall:
	itemball ULTRA_BALL

CeruleanCaveB6FMaxRevive:
	itemball MAX_REVIVE

CeruleanCaveB6FFullRestore:
	itemball FULL_RESTORE

CeruleanCaveB6F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 29,  1, CERULEAN_CAVE_B5F, 2
	warp_event 22,  6, CERULEAN_CAVE_B5F, 3
	warp_event 19,  7, CERULEAN_CAVE_B5F, 4
	warp_event  9,  1, CERULEAN_CAVE_B5F, 5
	warp_event  1,  3, CERULEAN_CAVE_B5F, 6
	warp_event  3, 11, CERULEAN_CAVE_B5F, 7

	def_bg_events

	def_object_events
	object_event  0, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB6FRareCandy, EVENT_CERULEAN_CAVE_B6F_RARE_CANDY
	object_event 16,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB6FUltraBall, EVENT_CERULEAN_CAVE_B6F_ULTRA_BALL
	object_event 19, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB6FMaxRevive, EVENT_CERULEAN_CAVE_B6F_MAX_REVIVE
	object_event 27,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB6FFullRestore, EVENT_CERULEAN_CAVE_B6F_FULL_RESTORE




