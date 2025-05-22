	object_const_def
    const GOLDENROD_PIER_SAILOR

GoldenrodPier_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodPierSign:
    jumptext GoldenrodPierSignText

GoldenrodPierSailorScript:
    jumptextfaceplayer GoldenrodPierSailorText

GoldenrodPierSailorText:
    text "Nothing beats the"
    line "smell of ocean sa-"
    cont "lt on the pier!"
    done

GoldenrodPierSignText:
    text "GOLDENROD Pier"
    done

GoldenrodPier_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event 19,  12, GOLDENROD_PIER_GATE, 3
	warp_event 19,  13, GOLDENROD_PIER_GATE, 4


	def_coord_events

	def_bg_events
    bg_event 4,  12, BGEVENT_READ, GoldenrodPierSign

	def_object_events
	object_event  8,  11, SPRITE_SAILOR, SPRITEMOVEDATA_WANDER, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodPierSailorScript, -1

