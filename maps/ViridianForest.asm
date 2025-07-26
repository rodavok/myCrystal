	object_const_def
	const VIRIDIAN_FOREST_BUG_CATCHER1
	const VIRIDIAN_FOREST_BUG_CATCHER2
	const VIRIDIAN_FOREST_BUG_CATCHER3
	const VIRIDIAN_FOREST_BUG_CATCHER4
	const VIRIDIAN_FOREST_LASS
	const VIRIDIAN_FOREST_BUG_CATCHER5
	const VIRIDIAN_FOREST_POKEBALL1
	const VIRIDIAN_FOREST_POKEBALL2
	const VIRIDIAN_FOREST_POKEBALL3


ViridianForest_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBugCatcherRob:
	trainer BUG_CATCHER, ROB, EVENT_BEAT_BUG_CATCHER_ROB, BugCatcherRobSeenText, BugCatcherRobBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherRobAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherEd:
	trainer BUG_CATCHER, ED, EVENT_BEAT_BUG_CATCHER_ED, BugCatcherEdSeenText, BugCatcherEdBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherEdAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherDoug:
	trainer BUG_CATCHER, DOUG, EVENT_BEAT_BUG_CATCHER_DOUG, BugCatcherDougSeenText, BugCatcherDougBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherDougAfterBattleText
	waitbutton
	closetext
	end

TrainerLassMary:
	trainer LASS, MARY, EVENT_BEAT_LASS_MARY, LassMarySeenText, LassMaryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassMaryAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherLuis:
	trainer BUG_CATCHER, LUIS, EVENT_BEAT_BUG_CATCHER_LUIS, BugCatcherLuisSeenText, BugCatcherLuisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherLuisAfterBattleText
	waitbutton
	closetext
	end

ViridianForestYoungsterScript:
	jumptextfaceplayer ViridianForestYoungsterText

TrainerTipsSign1:
	jumptext ViridianForestTrainerTips1Text

UseAntidoteSign:
	jumptext ViridianForestUseAntidoteSignText

TrainerTipsSign2:
	jumptext ViridianForestTrainerTips2Text
TrainerTipsSign3:
	jumptext ViridianForestTrainerTips3Text
TrainerTipsSign4:
	jumptext ViridianForestTrainerTips4Text
LeavingSign:
	jumptext ViridianForestLeavingSignText

ViridianForestRevive:
	itemball REVIVE

ViridianForestMaxPotion:
	itemball MAX_POTION

ViridianForestCalcium:
	itemball CALCIUM

ViridianForestYoungsterText:
	text "I came here with"
	line "some friends!"

	para "They're out for"
	line "#MON fights!"
	done


BugCatcherRobSeenText:
	text "My bug #MON are"
	line "tough. Prepare to"
	cont "lose!"
	done

BugCatcherRobBeatenText:
	text "I was whipped…"
	done

BugCatcherRobAfterBattleText:
	text "I'm going to look"
	line "for stronger bug"
	cont "#MON."
	done

BugCatcherEdSeenText:
	text "If you walk in"
	line "tall grass wearing"

	para "shorts, do you get"
	line "nicks and cuts?"
	done

BugCatcherEdBeatenText:
	text "Ouch, ouch, ouch!"
	done

BugCatcherEdAfterBattleText:
	text "They'll really"
	line "sting when you"
	cont "take a bath."
	done

BugCatcherDougSeenText:
	text "Why don't girls"
	line "like bug #MON?"
	done

BugCatcherDougBeatenText:
	text "No good!"
	done

BugCatcherDougAfterBattleText:
	text "Bug #MON squish"
	line "like plush toys"

	para "when you squeeze"
	line "their bellies."

	para "I love how they"
	line "feel!"
	done

LassMarySeenText:
	text "Hi, do you have a"
	line "PIKACHU?"
	done

LassMaryBeatenText:
	text "Oh no,"
	line "really?"
	done

BugCatcherLuisSeenText:
	text "I'm gonna be the"
	line "best. You just"
	cont "can't beat me!"
	done

BugCatcherLuisBeatenText:
	text "After"
	line "all I did..."
	prompt

BugCatcherLuisAfterBattleText:
	text "A METAPOD is cool"
	line "because its"
	cont "attack is its"
	cont "defense!"
	done

LassMaryAfterBattleText:
	text "I looked forever,"
	line "but I never found"
	cont "a PIKACHU here!"
	done

ViridianForestTrainerTips1Text:
	text "TRAINER TIPS"

	para "If you want to"
	line "avoid battles,"
	cont "stay away from"
	cont "grassy areas!"
	done

ViridianForestUseAntidoteSignText:
	text "For poison, use"
	line "ANTIDOTE! Get it"
	cont "at #MON MARTs!"
	done

ViridianForestTrainerTips2Text:
	text "TRAINER TIPS"

	para "Contact PROF.OAK"
	line "via PC to get"
	cont "your #DEX"
	cont "evaluated!"
	done

ViridianForestTrainerTips3Text:
	text "TRAINER TIPS"

	para "No stealing of"
	line "#MON from"
	cont "other trainers!"
	cont "Catch only wild"
	cont "#MON!"
	done

ViridianForestTrainerTips4Text:
	text "TRAINER TIPS"

	para "Weaken #MON"
	line "before attempting"
	cont "capture!"

	para "When healthy,"
	line "they may escape!"
	done

ViridianForestLeavingSignText:
	text "LEAVING"
	line "VIRIDIAN FOREST"
	cont "PEWTER CITY AHEAD"
	done


ViridianForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  15, 46, VIRIDIAN_FOREST_GATE_S, 1
	warp_event  16, 46, VIRIDIAN_FOREST_GATE_S, 1
    warp_event  17, 46, VIRIDIAN_FOREST_GATE_S, 2
	warp_event  18, 46, VIRIDIAN_FOREST_GATE_S, 2
	warp_event  1,  0, VIRIDIAN_FOREST_GATE_N, 1
	warp_event  2,  0, VIRIDIAN_FOREST_GATE_N, 2

	def_coord_events

	def_bg_events
	bg_event 24, 40, BGEVENT_READ, TrainerTipsSign1
	bg_event 16, 32, BGEVENT_READ, UseAntidoteSign
	bg_event 26, 17, BGEVENT_READ, TrainerTipsSign2
	bg_event  4, 24, BGEVENT_READ, TrainerTipsSign3
	bg_event 18, 45, BGEVENT_READ, TrainerTipsSign4
	bg_event  2,  3, BGEVENT_READ, LeavingSign

	def_object_events
	object_event 30, 33, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerBugCatcherRob, -1 ;5
	object_event 30, 19, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherEd, -1 ;3
	object_event 10,  1, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherDoug, -1 ;3
 	object_event 27, 40, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerBugCatcherLuis,-1 ;5
	object_event  2, 41, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerLassMary, -1
	object_event 16, 43, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ViridianForestYoungsterScript, -1
	object_event 25, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestRevive, EVENT_VIRIDIAN_FOREST_REVIVE
	object_event 12, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestMaxPotion, EVENT_VIRIDIAN_FOREST_MAX_POTION
	object_event  1, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestCalcium, EVENT_VIRIDIAN_FOREST_CALCIUM


