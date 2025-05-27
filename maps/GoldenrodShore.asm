	object_const_def
	const GOLDENRODSHORE_ROCK1
	const GOLDENRODSHORE_ROCK2
	const GOLDENRODSHORE_ROCK3
	const GOLDENROD_SHORE_FRUIT_TREE

GoldenrodShore_MapScripts:
	def_scene_scripts

	def_callbacks


GoldenrodShoreRock:
	jumpstd SmashRockScript

GoldenrodShoreSign:
    jumptext GoldenrodShoreSignText

GoldenrodShoreSignText:
		text "GOLDENROD SHORE"
		done

GoldenrodShore_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 11,  13, BGEVENT_READ, GoldenrodShoreSign

	def_object_events
	object_event  6,  6, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodShoreRock, -1
	object_event  5,  8, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodShoreRock, -1
	object_event  7,  10, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodShoreRock, -1
	object_event 18,  27, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 0, -1

