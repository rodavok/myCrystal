	object_const_def
        const ROUTE11GATE_OFFICER

Route11Gate_MapScripts:
	def_scene_scripts

	def_callbacks


Route11GateOfficerScript:
    jumptextfaceplayer Route11GateOfficerText

Route11GateOfficerText:
    line "fill this"
    done
    
Route11Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event  0,  4, ROUTE_11, 4
	warp_event  0,  5, ROUTE_11, 5
	warp_event  7,  4, ROUTE_12, 2
	warp_event  7,  5, ROUTE_12, 3
	warp_event  6,  8, ROUTE_11_GATE_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route11GateOfficerScript, -1
