	object_const_def
	const ROUTE16_BIG_SNORLAX
	const ROUTE16_BIKER1

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

TrainerBikerKimber:
	trainer BIKER, KIMBER, EVENT_BEAT_BIKER_KIMBER, BikerKimberSeenText, BikerKimberBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerKimberAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerCooper:
	trainer BIKER, COOPER, EVENT_BEAT_BIKER_COOPER, BikerCooperSeenText, BikerCooperBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerCooperAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerSmith:
	trainer BIKER, SMITH, EVENT_BEAT_BIKER_SMITH, BikerSmithSeenText, BikerSmithBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerSmithAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerBarrett:
	trainer BIKER, BARRETT, EVENT_BEAT_BIKER_BARRETT, BikerBarrettSeenText, BikerBarrettBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerBarrettAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerKoch:
	trainer BIKER, KOCH, EVENT_BEAT_BIKER_KOCH, BikerKochSeenText, BikerKochBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerKochAfterBattleText
	waitbutton
	closetext
	end

BikerKimberSeenText:
	text "Road's mine, kid!"
	line "Move it or lose!"
	done

BikerKimberBeatenText:
	text "You got some guts"
	line "standing up to me!"
	done

BikerKimberAfterBattleText:
	text "I respect trainers"
	line "who don't back"
	cont "down from a fight!"
	done

BikerCooperSeenText:
	text "This road belongs"
	line "to us BIKERS!"
	done

BikerCooperBeatenText:
	text "My engine just"
	line "stalled out!"
	done

BikerCooperAfterBattleText:
	text "Maybe my #MON"
	line "need a tune up"
	cont "too!"
	done

BikerSmithSeenText:
	text "Racing and #MON"
	line "battles! I love"
	cont "both!"
	done

BikerSmithBeatenText:
	text "Lost the race and"
	line "the battle!"
	done

BikerSmithAfterBattleText:
	text "Speed isn't every-"
	line "thing in battle."
	cont "Strategy matters!"
	done

BikerBarrettSeenText:
	text "My #MON are as"
	line "tough as my bike!"
	done

BikerBarrettBeatenText:
	text "Looks like I need"
	line "better shocks!"
	done

BikerBarrettAfterBattleText:
	text "A smooth ride"
	line "needs constant"
	cont "maintenance!"
	done

BikerKochSeenText:
	text "Scram kid!"
	done

BikerKochBeatenText:
	text "Drat!"
	done

BikerKochAfterBattleText:
	text "Beaten by a kid."
	line "Embarassing!"
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
	object_event  0,  0, BIKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBikerKimber, -1
	object_event  0,  1, BIKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBikerCooper, -1
	object_event  0,  2, BIKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBikerSmith, -1
	object_event  0,  3, BIKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBikerBarrett, -1
	object_event  0,  4, BIKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBikerKoch, -1


