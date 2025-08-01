	object_const_def
    const ROUTE_17_GATE_2F_SUPER_NERD

Route17Route18Gate2F_MapScripts:
	def_scene_scripts

	def_callbacks

Gordon:
	faceplayer
	opentext
	trade NPC_TRADE_GORDON
	waitbutton
	closetext
	end

Route17Route18Gate2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  7, ROUTE_11_GATE, 5


	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Gordon, -1
