	object_const_def
	const SILVERCAVEITEMROOMS_POKE_BALL1
	const SILVERCAVEITEMROOMS_POKE_BALL2
	const SILVERCAVEITEMROOMS_GIOVANNI
	const SILVERCAVEITEMROOMS_KRIS

SilverCaveItemRooms_MapScripts:
	def_scene_scripts

	def_callbacks

SilverCaveItemRoomsMaxRevive:
	itemball MAX_REVIVE

SilverCaveItemRoomsFullRestore:
	itemball FULL_RESTORE

KrisScript:
	special FadeOutMusic
	faceplayer
	opentext
	writetext KrisSeenText
	waitbutton
	closetext
	winlosstext KrisWinLossText, KrisWinLossText
	loadtrainer KRIS_T, KRIS3
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	special FadeOutMusic
	opentext
	writetext KrisLeavesText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear SILVERCAVEROOM3_RED
	pause 15
	special FadeInQuickly
	end

KrisSeenText:
	text "<……>"
	line "<……>"
	done

KrisWinLossText:
	text "…"
	done

KrisLeavesText:
	text "<……>"
	line "<……>"
	done

GiovanniScript2:
	faceplayer
	opentext
	checkevent EVENT_BEAT_GIOVANNI
	iftrue .FightDone
	writetext GiovanniText_LeaveMeAlone2
	waitbutton
	closetext
	winlosstext GiovanniText_Loss2, 0
	loadtrainer ROCKET_BOSS, GIOVANNI
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_GIOVANNI
	opentext
	writetext Text_ReceivedGiovanniPrize2

.FightDone:
	checkevent EVENT_GOT_GIOVANNI_PRIZE
	iftrue .GotGiovanniPrize2
	writetext GiovanniText_IWasRight2
	promptbutton
	verbosegiveitem EGG_TICKET
	iffalse .NoRoomForGiovanniPrize2
	setevent EVENT_GOT_GIOVANNI_PRIZE
	writetext GiovanniText_MySonIsOutThere2
	waitbutton
	closetext
	end

.GotGiovanniPrize2:
	writetext GiovanniText_MySonIsOutThere2
	waitbutton
.NoRoomForGiovanniPrize2:
	closetext
	end

GiovanniText_LeaveMeAlone2:
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

GiovanniText_Loss2:
    text "..."
    done

GiovanniText_IWasRight2:
	text "You're even"
	line "stronger than"
	cont "that boy I met"

	para "three years ago..."
	line "I was right to"

	para "abandon them."
	line "Here, take this."
	done

Text_ReceivedGiovanniPrize2:
	text "<PLAYER> received"
	line "EGG TICKET."
	done
GiovanniText_MySonIsOutThere2:
	text "I have a son."
	line "He is a trainer"

	para "about your age."
	line "I can only hope"

	para "he treats his"
	line "#MON as kindly"
    cont "as you do."
	done

SilverCaveItemRooms_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  3, SILVER_CAVE_ROOM_2,  3
	warp_event  7, 15, SILVER_CAVE_ROOM_2,  4
	warp_event  5,  3, SILVER_CAVE_MEW_ROOM, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveItemRoomsMaxRevive, EVENT_SILVER_CAVE_ITEM_ROOMS_MAX_REVIVE
	object_event 15, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveItemRoomsFullRestore, EVENT_SILVER_CAVE_ITEM_ROOMS_FULL_RESTORE
	object_event 17, 10, SPRITE_ROCKET_BOSS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GiovanniScript2, -1
	object_event  4,  2, SPRITE_KRIS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, KrisScript, EVENT_RED_IN_MT_SILVER

