	object_const_def
	const ROUTE5SAFFRONGATE_OFFICER

Route5SaffronGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route5SaffronGateOfficerScript:
	jumptextfaceplayer Route5SaffronGateOfficerText

Route5SaffronGateOfficerText:
	text "You're from JOHTO,"
	line "aren't you?"

	para "How do you like"
	line "KANTO? It's nice,"
	cont "don't you agree?"
	done

Route5SaffronGateClosedScript:
	jumptextfaceplayer Route5SaffronGateClosedText

Route5SaffronGateClosedText:
	text "We've heard"
	line "reports of a"

	para "TEAM ROCKET"
	line "member hiding out"
	cont "in CERULEAN CITY."

	para "We're taking this"
	line "seriously, so we"
	cont "can't let you"

	para "through here."
	line "Sorry."
	done

Route5SaffronGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  0, ROUTE_5, 2
	warp_event  4,  0, ROUTE_5, 3
	warp_event  3,  5, SAFFRON_CITY, 9
	warp_event  4,  5, SAFFRON_CITY, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route5SaffronGateOfficerScript, -1
	object_event  3,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route5SaffronGateClosedScript, EVENT_MET_ROCKET_GRUNT_AT_CERULEAN_GYM
	object_event  4,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route5SaffronGateClosedScript, EVENT_MET_ROCKET_GRUNT_AT_CERULEAN_GYM
