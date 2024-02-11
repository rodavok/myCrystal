	object_const_def
	const LAKEOFRAGEHIDDENPOWERHOUSE_FISHER

LakeOfRageHiddenPowerHouse_MapScripts:
	def_scene_scripts

	def_callbacks

HiddenPowerGuy:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM10_HIDDEN_POWER
	iftrue .AlreadyGotItem
	writetext HiddenPowerGuyText1
	promptbutton
	verbosegiveitem TM_HIDDEN_POWER
	iffalse .Done
	setevent EVENT_GOT_TM10_HIDDEN_POWER
	writetext HiddenPowerGuyText2
	waitbutton
	closetext
	end
.AlreadyGotItem:
	writetext HiddenPowerGuyText3
	waitbutton
.Done:
	closetext
	end

HiddenPowerHouseBookshelf:
	jumpstd DifficultBookshelfScript

HiddenPowerGuyText1:
	text "…You have strayed"
	line "far…"

	para "Here I have medi-"
	line "tated. Inside me,"

	para "a new power has"
	line "been awakened."

	para "Let me share my"
	line "power with your"

	para "#MON."
	line "Take this, child."
	done

HiddenPowerGuyText2:
	text "Do you see it? It"
	line "is HIDDEN POWER!"

	para "It draws out the"
	line "power of #MON"
	cont "for attacking."

	para "Remember this: its"
	line "type is de-"
	cont "pend on the #-"
	cont "MON using it."
	done

HiddenPowerGuyText3:
	text "I am meditating…"
	done

SwarmGrampsScript:
	faceplayer
	opentext
	checkflag ENGINE_SWARM
	iftrue .skiprandomswarm
	random 3
	ifequal 0, .dunsparce
	ifequal 1, .yanma
    ifequal 2, .qwilfish

.dunsparce
	setflag ENGINE_SWARM
	swarm DARK_CAVE_VIOLET_ENTRANCE
	writetext SwarmDunsparceText
	waitbutton
	closetext
	end

.yanma
	setflag ENGINE_SWARM
	swarm ROUTE_35
	writetext SwarmYanmaText
	waitbutton
	closetext
	end

.qwilfish
	setflag ENGINE_SWARM
	swarm ROUTE_32
	writetext SwarmQwilfishText
	waitbutton
	closetext
	end

.skiprandomswarm
	writetext SkipSwarmText
	waitbutton
	closetext
	end

SwarmDunsparceText:
	text "Let me see…"
	line "What did the news"
	cont "say?"

	para "Oh yes! There's a"
	line "swarm of DUNSPARCE"
	cont "at DARK CAVE."
	done
	
SwarmYanmaText:
	text "Let me see…"
	line "What did the news"
	cont "say?"

	para "Oh yes! There's a"
	line "swarm of YANMA"
	cont "on ROUTE 35."
	done
	
SwarmQwilfishText:
	text "Let me see…"
	line "What did the news"
	cont "say?"

	para "Oh yes! There's a"
	line "swarm of QWILFISH"
	cont "on ROUTE 32."
	done

SkipSwarmText:
	text "Finding rare"
	line "#MON is so"

	para "Exciting! Don't"
	line "you think?"
	done

LakeOfRageHiddenPowerHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAKE_OF_RAGE, 1
	warp_event  3,  7, LAKE_OF_RAGE, 1

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, HiddenPowerHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, HiddenPowerHouseBookshelf

	def_object_events
	object_event  5,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SwarmGrampsScript, -1
	object_event  2,  3, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HiddenPowerGuy, -1
