	object_const_def
	const CERULEAN_CAVE_B2F_POKEBALL1
	const CERULEAN_CAVE_B2F_POKEBALL2
	const CERULEAN_CAVE_B2F_POKEBALL3

CeruleanCaveB2F_MapScripts:
	def_scene_scripts

	def_callbacks


CeruleanCaveB2FNugget:
	itemball NUGGET

CeruleanCaveB2FFullRestore:
	itemball FULL_RESTORE

CeruleanCaveB2FMaxElixer:
	itemball MAX_ELIXER

CeruleanCaveB2FHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_CERULEAN_CAVE_B2F_HIDDEN_RARE_CANDY


CeruleanCaveB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25, 17, CERULEAN_CAVE_B1F, 2
	warp_event 27,  1, CERULEAN_CAVE_B3F, 1
	warp_event 23,  7, CERULEAN_CAVE_B3F, 2
	warp_event 18,  9, CERULEAN_CAVE_B3F, 3
	warp_event  7,  1, CERULEAN_CAVE_B3F, 4
	warp_event  1,  3, CERULEAN_CAVE_B3F, 5
	warp_event  3, 11, CERULEAN_CAVE_B3F, 6
	warp_event  0,  6, CERULEAN_CAVE_B4F, 1

	def_coord_events


	def_bg_events
	bg_event  14, 11, BGEVENT_ITEM, CeruleanCaveB2FHiddenRareCandy


	def_object_events
    object_event  5,   0, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB2FNugget, EVENT_CERULEAN_CAVE_B2F_NUGGET
	object_event  7,  13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB2FFullRestore, EVENT_CERULEAN_CAVE_B2F_FULL_RESTORE
	object_event 19,   3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB2FMaxElixer, EVENT_CERULEAN_CAVE_B2F_MAX_ELIXER
