	object_const_def
	const CERULEAN_CAVE_B4F_POKEBALL1
	const CERULEAN_CAVE_B4F_POKEBALL2

CeruleanCaveB4F_MapScripts:
	def_scene_scripts

	def_callbacks


CeruleanCaveB4FUltraBall:
	itemball ULTRA_BALL

CeruleanCaveB4FMaxRevive:
	itemball MAX_REVIVE

CeruleanCaveB4FHiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_CERULEAN_CAVE_B4F_HIDDEN_ULTRA_BALL

CeruleanCaveB4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event   3,   6, CERULEAN_CAVE_B2F, 8
	warp_event  27,  14, CERULEAN_CAVE_B5F, 1




	def_coord_events

	def_bg_events
	bg_event  27, 3, BGEVENT_ITEM, CeruleanCaveB4FHiddenUltraBall


	def_object_events
	object_event 6,   14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB4FUltraBall, EVENT_CERULEAN_CAVE_B4F_ULTRA_BALL
	object_event 18,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB4FMaxRevive, EVENT_CERULEAN_CAVE_B4F_MAX_REVIVE

