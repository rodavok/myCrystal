	object_const_def
    const SAFARI_ZONE_NORTH_POKEBALL1
	const SAFARI_ZONE_NORTH_POKEBALL2

SafariZoneNorth_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneNorthTM53:
	itemball TM_WEATHER_BALL

SafariZoneNorthProtein:
	itemball PROTEIN

SafariZoneNorthCarbos:
	itemball CARBOS

SafariZoneNorth_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	warp_event  39,  30, SAFARI_ZONE_EAST, 1
	warp_event  39,  31, SAFARI_ZONE_EAST, 2
	warp_event  20,  35, SAFARI_ZONE_CENTER, 7
	warp_event  21,  35, SAFARI_ZONE_CENTER, 8
	warp_event   8,  35, SAFARI_ZONE_WEST, 1
	warp_event   9,  35, SAFARI_ZONE_WEST, 2
	warp_event   2,  35, SAFARI_ZONE_WEST, 3
	warp_event   3,  35, SAFARI_ZONE_WEST, 4
 




	def_coord_events

	def_bg_events

	def_object_events
	object_event 19,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneNorthTM53, EVENT_SAFARI_ZONE_NORTH_TM_53
	object_event 25,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneNorthProtein, EVENT_SAFARI_ZONE_NORTH_PROTEIN
	