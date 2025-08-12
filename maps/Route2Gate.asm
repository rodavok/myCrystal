	object_const_def
	const ROUTE2GATE_SCIENTIST

Route2Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route2GateScientistScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_ROUTE_2_SCOPE_LENS
	iftrue .GotScopeLens
	writetext Route2GateScientistText
	waitbutton
	readvar VAR_DEXCAUGHT
	ifgreater 125, .GiveScopeLens
	writetext LessThan125Text
	waitbutton
	closetext
	end
.GiveScopeLens:
	writetext WowMoreThan125Text
	promptbutton
	verbosegiveitem SCOPE_LENS
	iffalse .NoRoom
	setevent EVENT_GOT_ROUTE_2_SCOPE_LENS
.GotScopeLens:
	writetext GotScopeLensText
	waitbutton
.NoRoom:
	closetext 
	end

Route2GateScientistText:
	text "Are you <PLAY_G>?"

	para "I work as PROF."
	line "OAK's AIDE."

	para "I was told to give"
	line "you this when"
	cont "you've caught at"

	para "least 125 kinds"
	line "of #MON."

	para "Let's see how many"
	line "#MON you've"
	cont "caught…"
	done

WowMoreThan125Text:
	text "Wow! You've caught"
	line "more than 125"
	cont "kinds of #MON!"

	para "Please take this!"
	done

LessThan125Text:
	text "It looks like you"
	line "haven't caught"
	cont "enough #MON…"
	done


GotScopeLensText:
	text "The SCOPE LENS is"
	line "sure to give you"
	cont "an edge in battle."

	para "PROF. OAK has many"
	line "assistants. Keep"
	cont "an eye out for us!"
	done

	

Route2Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_2, 3
	warp_event  5,  0, ROUTE_2, 4
	warp_event  4,  7, ROUTE_2, 2
	warp_event  5,  7, ROUTE_2, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route2GateScientistScript, -1  
