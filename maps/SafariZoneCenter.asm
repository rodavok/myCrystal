	object_const_def
	const SAFARI_ZONE_CENTER_POKEBALL

SafariZoneCenter_MapScripts:
	def_scene_scripts

	def_callbacks
	

SafariZoneCenterNugget:
	itemball NUGGET

SafariZoneCenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  14,  25, SAFARI_ZONE_FUCHSIA_GATE_BETA, 1
	warp_event  15,  25, SAFARI_ZONE_FUCHSIA_GATE_BETA, 2
	warp_event  29,  10, SAFARI_ZONE_EAST, 1
	warp_event  29,  11, SAFARI_ZONE_EAST, 2
	warp_event   0,  10, SAFARI_ZONE_WEST, 5
	warp_event   0,  11, SAFARI_ZONE_WEST, 6
	warp_event  14,   0, SAFARI_ZONE_NORTH, 3
	warp_event  15,   0, SAFARI_ZONE_NORTH, 4




	def_coord_events

	def_bg_events

	def_object_events
	object_event 16, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneCenterNugget, EVENT_SAFARI_ZONE_CENTER_NUGGET

