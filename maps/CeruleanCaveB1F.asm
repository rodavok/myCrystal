	object_const_def
	const CERULEAN_CAVE_B1F_POKEBALL1
	const CERULEAN_CAVE_B1F_POKEBALL2

CeruleanCaveB1F_MapScripts:
	def_scene_scripts

	def_callbacks


CeruleanCaveB1FUltraBall:
	itemball ULTRA_BALL

CeruleanCaveB1FMaxRevive:
	itemball MAX_REVIVE

CeruleanCaveB1FHiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_CERULEAN_CAVE_B1F_HIDDEN_ULTRA_BALL

CeruleanCaveB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event   3,   6, CERULEAN_CAVE_1F, 9
	warp_event   5,  11, CERULEAN_CAVE_B2F, 1




	def_coord_events

	def_bg_events
	bg_event  27, 3, BGEVENT_ITEM, CeruleanCaveB1FHiddenUltraBall


	def_object_events
	object_event 19, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB1FUltraBall, EVENT_CERULEAN_CAVE_B1F_ULTRA_BALL
	object_event 24,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB1FMaxRevive, EVENT_CERULEAN_CAVE_B1F_MAX_REVIVE

