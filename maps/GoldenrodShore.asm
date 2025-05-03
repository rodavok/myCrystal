	object_const_def
	const GOLDENRODSHORE_ROCK1
	const GOLDENRODSHORE_ROCK2
	const GOLDENRODSHORE_ROCK3

GoldenrodShore_MapScripts:
	def_scene_scripts

	def_callbacks


GoldenrodShoreRock:
	jumpstd SmashRockScript

GoldenrodShore_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  8, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodShoreRock, -1
	object_event  6,  6, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodShoreRock, -1
	object_event  7, 10, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodShoreRock, -1
