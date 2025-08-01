	object_const_def
    const ROUTE_11_GATE_2F_YOUNGSTER

Route11Gate2F_MapScripts:
	def_scene_scripts

	def_callbacks

Turner:
	faceplayer
	opentext
	trade NPC_TRADE_TURNER
	waitbutton
	closetext
	end

Route11Gate2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  7, ROUTE_11_GATE, 5


	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Turner, -1
