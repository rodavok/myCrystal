	object_const_def
	const ROUTE16_BIG_SNORLAX

Route16_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route16AlwaysOnBikeCallback

Route16AlwaysOnBikeCallback:
	readvar VAR_YCOORD
	ifless 5, .CanWalk
	readvar VAR_XCOORD
	ifgreater 13, .CanWalk
	setflag ENGINE_ALWAYS_ON_BIKE
	endcallback

.CanWalk:
	clearflag ENGINE_ALWAYS_ON_BIKE
	endcallback

Route16Snorlax:
	opentext
	special SnorlaxAwake
	iftrue .Awake
	writetext Route16SnorlaxSleepingText
	waitbutton
	closetext
	end

.Awake:
	writetext Route16RadioNearSnorlaxText
	pause 15
	cry SNORLAX
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon SNORLAX, 50
	startbattle
	disappear ROUTE16_BIG_SNORLAX
	setevent EVENT_FOUGHT_ROUTE16_SNORLAX
	reloadmapafterbattle
	end

CyclingRoadSign:
	jumptext CyclingRoadSignText

CyclingRoadSignText:
	text "CYCLING ROAD"

	para "DOWNHILL COASTING"
	line "ALL THE WAY!"
	done

Route16SnorlaxSleepingText:
	text "SNORLAX is snoring"
	line "peacefully…"
	done

Route16RadioNearSnorlaxText:
	text "The #GEAR was"
	line "placed near the"
	cont "sleeping SNORLAX…"

	para "…"

	para "SNORLAX woke up!"
	done
Route16_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  3, ROUTE_16_FUCHSIA_SPEECH_HOUSE, 1
	warp_event 18,  10, ROUTE_16_GATE, 3
	warp_event 18,  11, ROUTE_16_GATE, 4
	warp_event 11,  10, ROUTE_16_GATE, 1
	warp_event 11,  11, ROUTE_16_GATE, 2

	def_coord_events

	def_bg_events
	bg_event  5,  9, BGEVENT_READ, CyclingRoadSign

	def_object_events
	object_event 20, 10, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route16Snorlax, EVENT_SNORLAX_ROUTE16
