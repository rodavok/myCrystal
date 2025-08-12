	object_const_def
	const ROUTE20_SWIMMER_GIRL1
	const ROUTE20_SWIMMER_GIRL2
	const ROUTE20_SWIMMER_GUY
	const ROUTE20_YOUNGSTER
	const ROUTE20_SWIMMER_GIRL3
	const ROUTE20_SWIMMER_GUY2

Route20_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route20ClearRocksCallback

Route20ClearRocksCallback:
	setevent EVENT_CINNABAR_ROCKS_CLEARED
	endcallback

TrainerSwimmerfNicole:
	trainer SWIMMERF, NICOLE, EVENT_BEAT_SWIMMERF_NICOLE, SwimmerfNicoleSeenText, SwimmerfNicoleBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfNicoleAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerfLori:
	trainer SWIMMERF, LORI, EVENT_BEAT_SWIMMERF_LORI, SwimmerfLoriSeenText, SwimmerfLoriBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfLoriAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermCameron:
	trainer SWIMMERM, CAMERON, EVENT_BEAT_SWIMMERM_CAMERON, SwimmermCameronSeenText, SwimmermCameronBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermCameronAfterBattleText
	waitbutton
	closetext
	end

TrainerBirdkeeperBuddy:
	trainer BIRD_KEEPER, BUDDY, EVENT_BEAT_BIRDKEEPER_BUDDY, BirdkeeperBuddySeenText, BirdkeeperBuddyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdkeeperBuddyAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerfAlia:
	trainer SWIMMERF, ALIA, EVENT_BEAT_SWIMMERF_ALIA, SwimmerfAliaSeenText, SwimmerfAliaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfAliaAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermSteve:
	trainer SWIMMERM, STEVE, EVENT_BEAT_SWIMMERM_STEVE, SwimmermSteveSeenText, SwimmermSteveBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermSteveAfterBattleText
	waitbutton
	closetext
	end

BirdkeeperBuddySeenText:
	text "Ho ho ho! My bird"
	line "#MON carried" 
	cont "me here!"
	done

BirdkeeperBuddyBeatenText:
	text "Brrr! Ice cold!"
	done

BirdkeeperBuddyAfterBattleText:
	text "I flew here on"
	line "my DELIBIRD."

	para "Rumor has it that"
	line "an even stronger"
	cont "ICE #MON"

	para "lives in the"
	line "depths of SEAFOAM"
	cont "ISLANDS."
	done

SwimmerfAliaSeenText:
	text "I'm c-c-cold!"
	done

SwimmerfAliaBeatenText:
	text "I'm all washed up!"
	done

SwimmerfAliaAfterBattleText:
	text "Cold water training"
	line "builds character!"
	cont "Try it sometime!"
	done

SwimmermSteveSeenText:
	text "SEAFOAM ISLANDS"
	line "are freezing cold!"
	done

SwimmermSteveBeatenText:
	text "Sunk like a stone!"
	done

SwimmermSteveAfterBattleText:
	text "The currents around"
	line "these caves are"
	cont "really strong!"
	done

CinnabarGymSign:
	jumptext CinnabarGymSignText

SwimmerfNicoleSeenText:
	text "I feel so much"
	line "lighter in water."
	done

SwimmerfNicoleBeatenText:
	text "Oh, no!"
	done

SwimmerfNicoleAfterBattleText:
	text "Swimming exercises"
	line "your full body."

	para "It's really good"
	line "for you."
	done

SwimmerfLoriSeenText:
	text "What an impressive"
	line "collection of GYM"

	para "BADGES. We should"
	line "battle!"
	done

SwimmerfLoriBeatenText:
	text "No!"
	done

SwimmerfLoriAfterBattleText:
	text "SURF is no longer"
	line "the only HM move"
	cont "you use in water."
	done

SwimmermCameronSeenText:
	text "I guess it's im-"
	line "possible to swim"

	para "all the way to"
	line "JOHTO."
	done

SwimmermCameronBeatenText:
	text "Aiyah!"
	done

SwimmermCameronAfterBattleText:
	text "Besides the sea, I"
	line "can also swim in"
	cont "ponds and rivers."
	done

CinnabarGymSignText:
	text "What does this"
	line "sign say?"

	para "CINNABAR GYM"
	line "LEADER: BLAINE"
	done

Route20_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 52,  9, SEAFOAM_GYM, 1
	warp_event 44,  5, SEAFOAM_ISLANDS_NORTH, 1

	def_coord_events

	def_bg_events
	bg_event 51, 11, BGEVENT_READ, CinnabarGymSign

	def_object_events
	object_event 77,  8, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfNicole, -1
	object_event 67, 13, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfLori, -1
	object_event 15, 13, SPRITE_SWIMMER_GUY,  SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermCameron, -1
	object_event 52,  2, SPRITE_YOUNGSTER,    SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBirdkeeperBuddy, -1
	object_event 36, 13, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfAlia, -1
	object_event 21,  5, SPRITE_SWIMMER_GUY,  SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermSteve, -1
