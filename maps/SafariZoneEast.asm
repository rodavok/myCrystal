	object_const_def
	const SAFARI_ZONE_EAST_POKEBALL1
	const SAFARI_ZONE_EAST_POKEBALL2
	const SAFARI_ZONE_EAST_POKEBALL3
SafariZoneEast_MapScripts:
	def_scene_scripts

	def_callbacks


SafariZoneEastTM52:
	itemball TM_DRAGON_DANCE

SafariZoneEastFullRestore:
	itemball FULL_RESTORE

SafariZoneEastCarbos:
	itemball CARBOS

SafariZoneEast_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	warp_event   0,  22, SAFARI_ZONE_CENTER, 3
	warp_event   0,  23, SAFARI_ZONE_CENTER, 4
	warp_event   0,   4, SAFARI_ZONE_NORTH, 1
	warp_event   0,   5, SAFARI_ZONE_NORTH, 2




	def_coord_events

	def_bg_events

	def_object_events
	object_event 21, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneEastTM52, EVENT_SAFARI_ZONE_EAST_TM_52
	object_event 19, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneEastFullRestore, EVENT_SAFARI_ZONE_EAST_FULL_RESTORE
	object_event 15, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneEastCarbos, EVENT_SAFARI_ZONE_EAST_CARBOS

