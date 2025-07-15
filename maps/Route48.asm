	object_const_def
	const ROUTE48_POKE_BALL

Route48_MapScripts:
	def_scene_scripts

	def_callbacks

Route48Nugget:
	itemball NUGGET

Route48Sign:
	jumptext Route48SignText

Route48SignText:
    text "Route 48"
    line "North: Safari Zone"
    done

Route48_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 21, 11, BGEVENT_READ, Route48Sign


	def_object_events
	object_event  5, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route48Nugget, NUGGET, -1