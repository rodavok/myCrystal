	object_const_def
	const SAFARI_ZONE_WEST_POKEBALL1
	const SAFARI_ZONE_WEST_POKEBALL2
    const SAFARI_ZONE_WEST_POKEBALL3

SafariZoneWest_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneWestTM32:
	itemball TM_DOUBLE_TEAM

SafariZoneWestMaxPotion:
	itemball MAX_POTION

SafariZoneWestMaxRevive:
	itemball MAX_REVIVE

SafariZoneWestHiddenRevive:
	hiddenitem REVIVE, EVENT_SAFARI_ZONE_WEST_HIDDEN_REVIVE

SafariZoneWest_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	warp_event  26,  0, SAFARI_ZONE_NORTH, 5 ;n
	warp_event  27,  0, SAFARI_ZONE_NORTH, 6
	warp_event  20,  0, SAFARI_ZONE_NORTH, 7
	warp_event  21,  0, SAFARI_ZONE_NORTH, 8
	warp_event  29, 22, SAFARI_ZONE_CENTER, 1 ;c
	warp_event  29, 23, SAFARI_ZONE_CENTER, 2




	def_coord_events

	def_bg_events
	bg_event  6,  5, BGEVENT_ITEM, SafariZoneWestHiddenRevive


	def_object_events
	object_event  9,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneWestTM32, EVENT_SAFARI_ZONE_WEST_TM_32
	object_event  8, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneWestMaxPotion, EVENT_SAFARI_ZONE_WEST_MAX_POTION
	object_event 18, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneWestMaxRevive, EVENT_SAFARI_ZONE_WEST_MAX_REVIVE
	
