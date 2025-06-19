	object_const_def
	const CERULEANCAVE5F_POKEBALL1
	const CERULEANCAVE5F_POKEBALL2
	const CERULEANCAVE5F_POKEBALL3
	const CERULEANCAVE5F_POKEBALL4

CeruleanCaveB5F_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanCaveB5FRareCandy:
	itemball RARE_CANDY

CeruleanCaveB5FMaxElixer:
	itemball MAX_ELIXER

CeruleanCaveB5FMaxRevive:
	itemball MAX_REVIVE

CeruleanCaveB5FUltraBall:
	itemball ULTRA_BALL




CeruleanCaveB5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25, 17, CERULEAN_CAVE_B4F, 2
	warp_event 27,  1, CERULEAN_CAVE_B6F, 1
	warp_event 23,  7, CERULEAN_CAVE_B6F, 2
	warp_event 18,  9, CERULEAN_CAVE_B6F, 3
	warp_event  7,  1, CERULEAN_CAVE_B6F, 4
	warp_event  1,  3, CERULEAN_CAVE_B6F, 5
	warp_event  3, 11, CERULEAN_CAVE_B6F, 6
	warp_event  0,  6, CERULEAN_CAVE_B7F, 1

	def_coord_events


	def_bg_events



	def_object_events
	object_event 29, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB5FRareCandy, EVENT_CERULEAN_CAVE_B5F_RARE_CANDY
	object_event  7, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB5FMaxElixer, EVENT_CERULEAN_CAVE_B5F_MAX_ELIXER
	object_event 29,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB5FMaxRevive, EVENT_CERULEAN_CAVE_B5F_MAX_REVIVE
	object_event 18,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB5FUltraBall, EVENT_CERULEAN_CAVE_B5F_ULTRA_BALL



