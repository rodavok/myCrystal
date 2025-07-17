	object_const_def
	const CLIFFCAVE_POKEFAN_M

CliffCave_MapScripts:
	def_scene_scripts

	def_callbacks


CliffCavePokefanMScript:
    jumptextfaceplayer CliffCavePokefanMText

CliffCavePokefanMText:
    text "If you see a fork"
    line "in the road inside"
    cont "a cave, most like-"

    para "-ly, one way is"
    line "right and the oth-"
    cont "er is a dead end."

    para "But people can't"
    line "help trying both."

    para "Do you want to go"
    line "up the ladder or"
    cont "down the ladder?"
    done 

CliffCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 33, ROUTE_47, 2
	warp_event  3, 31, CLIFF_CAVE, 3
	warp_event 15, 17, CLIFF_CAVE, 2
    warp_event 11, 11, ROUTE_47, 4
    warp_event  3, 21, ROUTE_47, 5
    warp_event 17,  9, ROUTE_47, 3
    warp_event  3,  9, ROUTE_47, 6
    warp_event  7, 31, CLIFF_CAVE, 9
    warp_event 15, 29, CLIFF_CAVE, 8
    warp_event 15, 33, ROUTE_47, 7
    warp_event  9, 11, CLIFF_CAVE, 12
    warp_event 17, 21, CLIFF_CAVE, 11

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5, 31, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CliffCavePokefanMScript, -1