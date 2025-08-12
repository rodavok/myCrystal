	object_const_def
	const ROUTE_15_FUCHSIA_GATE_2F_OAK_ASSISTANT

Route15FuchsiaGate2F_MapScripts:
	def_scene_scripts

	def_callbacks


Route15Gate2FOakAssistantScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_ROUTE_15_PP_UP
	iftrue .GotPPUP
	writetext Route15Gate2FGateScientistText
	waitbutton
	readvar VAR_DEXCAUGHT
	ifgreater 75, .GivePPUP
	writetext LessThan75Text
	waitbutton
	closetext
	end
.GivePPUP:
	writetext WowMoreThan75Text
	promptbutton
	verbosegiveitem PP_UP
	iffalse .NoRoom
	setevent EVENT_GOT_ROUTE_15_PP_UP
.GotPPUP:
	writetext GotPP_UPText
	waitbutton
.NoRoom:
	closetext 
	end

Route15Gate2FGateScientistText:
	text "Are you <PLAY_G>?"

	para "I work as PROF."
	line "OAK's AIDE."

	para "I was told to give"
	line "you this when"
	cont "you've caught at"

	para "least 75 kinds"
	line "of #MON."

	para "Let's see how many"
	line "#MON you've"
	cont "caught…"
	done

WowMoreThan75Text:
	text "Wow! You've caught"
	line "more than 75"
	cont "kinds of #MON!"

	para "Please take this!"
	done

LessThan75Text:
	text "It looks like you"
	line "haven't caught"
	cont "enough #MON…"
	done


GotPP_UPText:
	text "There's only a"
	line "few of these. Use"
	cont "it on a strong"

	para "move like"
	line "FIRE BLAST!"

	para "PROF. OAK has many"
	line "assistants. Keep"
	cont "an eye out for us!"
	done

Route15FuchsiaGate2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  7, ROUTE_15_FUCHSIA_GATE, 5


	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route15Gate2FOakAssistantScript, -1
