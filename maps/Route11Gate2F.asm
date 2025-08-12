	object_const_def
    const ROUTE_11_GATE_2F_YOUNGSTER
	const ROUTE_11_GATE_2F_OAK_ASSISTANT

Route11Gate2F_MapScripts:
	def_scene_scripts

	def_callbacks

Turner:
	faceplayer
	opentext
	trade NPC_TRADE_TURNER
	waitbutton
	closetext
	end

Route11Gate2FOakAssistantScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_ROUTE_11_AMULET_COIN
	iftrue .GotAmuletCoin
	writetext Route11Gate2FGateScientistText
	waitbutton
	readvar VAR_DEXCAUGHT
	ifgreater 100, .GiveAmuletCoin
	writetext LessThan100Text
	waitbutton
	closetext
	end
.GiveAmuletCoin:
	writetext WowMoreThan100Text
	promptbutton
	verbosegiveitem AMULET_COIN
	iffalse .NoRoom
	setevent EVENT_GOT_ROUTE_11_AMULET_COIN
.GotAmuletCoin:
	writetext GotAmuletText
	waitbutton
.NoRoom:
	closetext 
	end

Route11Gate2FGateScientistText:
	text "Are you <PLAY_G>?"

	para "I work as PROF."
	line "OAK's AIDE."

	para "I was told to give"
	line "you this when"
	cont "you've caught at"

	para "least 100 kinds"
	line "of #MON."

	para "Let's see how many"
	line "#MON you've"
	cont "caught…"
	done

WowMoreThan100Text:
	text "Wow! You've caught"
	line "more than 100"
	cont "kinds of #MON!"

	para "Please take this!"
	done

LessThan100Text:
	text "It looks like you"
	line "haven't caught"
	cont "enough #MON…"
	done


GotAmuletText:
	text "With the AMULET"
	line "COIN, you can buy"
	cont "lots of vitamins"

	para "to make your"
	line "#MON stronger!"

	para "PROF. OAK has many"
	line "assistants. Keep"
	cont "an eye out for us!"
	done

Route11Gate2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  7, ROUTE_11_GATE, 5


	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Turner, -1
	object_event  3,  6, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route11Gate2FOakAssistantScript, -1