    object_const_def
	const GOLDENRODGATE_OFFICER

GoldenrodPierGate_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodPierGateOfficerScript:
	jumptextfaceplayer GoldenrodPierGateOfficerText

GoldenrodPierGateOfficerText:
	text "This gate leads to"
	line "GOLDENROD PIER."

    para "The WHIRL ISLANDS"
    line "are to the west."
	done

GoldenrodPierGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  4, GOLDENROD_CITY, 16
	warp_event  9,  5, GOLDENROD_CITY, 17
	warp_event  0,  4, GOLDENROD_PIER, 1
	warp_event  0,  5, GOLDENROD_PIER, 2


	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodPierGateOfficerScript, -1