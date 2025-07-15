	object_const_def
	const CLIFFEDGEGATE_POKE_BALL

CliffEdgeGate_MapScripts:
	def_scene_scripts

	def_callbacks

CliffEdgeGateBigPearl:
	itemball BIG_PEARL

CliffEdgeGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  17,  7, CIANWOOD_CITY, 8
	warp_event   3, 11, ROUTE_47, 1
	warp_event   5, 15, ROUTE_47, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event 13,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CliffEdgeGateBigPearl, BIG_PEARL, -1