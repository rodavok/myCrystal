	object_const_def
	const TOHJOFALLS_POKE_BALL
	const TOHJOFALLS_GIOVANNI

TohjoFalls_MapScripts:
	def_scene_scripts

	def_callbacks

TohjoFallsMoonStone:
	itemball MOON_STONE

GiovanniScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_GIOVANNI
	iftrue .FightDone
	writetext GiovanniText_LeaveMeAlone
	waitbutton
	closetext
	winlosstext GiovanniText_Loss, 0
	loadtrainer ROCKET_BOSS, GIOVANNI
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_GIOVANNI
	opentext
	writetext Text_ReceivedGiovanniPrize

.FightDone:
	checkevent EVENT_GOT_GIOVANNI_PRIZE
	iftrue .GotGiovanniPrize
	writetext GiovanniText_IWasRight
	promptbutton
	verbosegiveitem EGG_TICKET
	iffalse .NoRoomForGiovanniPrize
	setevent EVENT_GOT_GIOVANNI_PRIZE
	writetext GiovanniText_MySonIsOutThere
	waitbutton
	closetext
	end

.GotGiovanniPrize:
	writetext GiovanniText_MySonIsOutThere
	waitbutton
.NoRoomForGiovanniPrize:
	closetext
	end

GiovanniText_LeaveMeAlone:
	text "I don't know"
	line "why you have"

	para "come here."
	line "I have heard"

	para "Team Rocket"
	line "calling for me."

	para "I didn't want"
	line "to help them."

	para "I am in exile."
    line "Leave me alone!"
	done

GiovanniText_Loss:
    text "..."
    done

GiovanniText_IWasRight:
	text "You're even"
	line "stronger than"
	cont "that boy I met"

	para "three years ago..."
	line "I was right to"

	para "abandon them."
	line "Here, take this."
	done

Text_ReceivedGiovanniPrize:
	text "<PLAYER> received"
	line "EGG TICKET."
	done
GiovanniText_MySonIsOutThere:
	text "I have a son."
	line "He is a trainer"

	para "about your age."
	line "I can only hope"

	para "he treats his"
	line "#MON as kindly"
    cont "as you do."
	done
TohjoFalls_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 15, ROUTE_27, 2
	warp_event 25, 15, ROUTE_27, 3
	;warp_event  3,  5, TOHJO_FALLS_GIOVANNI_ROOM, 1
	

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TohjoFallsMoonStone, EVENT_TOHJO_FALLS_MOON_STONE
	object_event  10,  14, SPRITE_ROCKET_BOSS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GiovanniScript, EVENT_BEAT_ELITE_FOUR

