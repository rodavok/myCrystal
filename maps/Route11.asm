	object_const_def
	const ROUTE11_YOUNGSTER1
	const ROUTE11_YOUNGSTER2
	const ROUTE11_YOUNGSTER3
	const ROUTE11_YOUNGSTER4
	const ROUTE11_FRUIT_TREE
	const ROUTE11_TEACHER1
	const ROUTE11_SUPER_NERD
	const ROUTE11_TEACHER2

Route11_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerYoungsterOwen:
	trainer YOUNGSTER, OWEN, EVENT_BEAT_YOUNGSTER_OWEN, YoungsterOwenSeenText, YoungsterOwenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterOwenAfterBattleText
	waitbutton
	closetext
	end

TrainerYoungsterJason:
	trainer YOUNGSTER, JASON, EVENT_BEAT_YOUNGSTER_JASON, YoungsterJasonSeenText, YoungsterJasonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterJasonAfterBattleText
	waitbutton
	closetext
	end

TrainerPsychicHerman:
	trainer PSYCHIC_T, HERMAN, EVENT_BEAT_PSYCHIC_HERMAN, PsychicHermanSeenText, PsychicHermanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicHermanAfterBattleText
	waitbutton
	closetext
	end

TrainerPsychicFidel:
	trainer PSYCHIC_T, FIDEL, EVENT_BEAT_PSYCHIC_FIDEL, PsychicFidelSeenText, PsychicFidelBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicFidelAfterBattleText
	waitbutton
	closetext
	end

Route11Sign:
	jumptext Route11SignText

Route11FruitTree:
	fruittree FRUITTREE_ROUTE_11

Route11HiddenRevive:
	hiddenitem REVIVE, EVENT_ROUTE_11_HIDDEN_REVIVE

YoungsterOwenSeenText:
	text "There's no cheat-"
	line "ing in #MON."

	para "Let's keep it fair"
	line "and square!"
	done

YoungsterOwenBeatenText:
	text "Huh? How did this"
	line "happen?"
	done

YoungsterOwenAfterBattleText:
	text "I fought fair and"
	line "square with honor."

	para "I don't regret"
	line "this at all."
	done

YoungsterJasonSeenText:
	text "It itches and"
	line "tickles a bit when"

	para "I wear shorts in"
	line "the grass."
	done

YoungsterJasonBeatenText:
	text "Aiyaaah!"
	line "I got stomped!"
	done

YoungsterJasonAfterBattleText:
	text "I'm going to catch"
	line "more #MON in"
	cont "the grass."
	done

PsychicHermanSeenText:
	text "…"
	done

PsychicHermanBeatenText:
	text "…"
	done

PsychicHermanAfterBattleText:
	text "…"

	para "I lost while I had"
	line "my eyes closed…"
	done

PsychicFidelSeenText:
	text "I can see it…"

	para "Everything to see"
	line "about you…"
	done

PsychicFidelBeatenText:
	text "I couldn't foresee"
	line "your power…"
	done

PsychicFidelAfterBattleText:
	text "Strength in con-"
	line "viction…"

	para "You're strong be-"
	line "cause you believe"
	cont "in your #MON."
	done

Route11SignText:
	text "ROUTE 11"
	done

TrainerTeacherBettie:
	trainer TEACHER, BETTIE, EVENT_BEAT_TEACHER_BETTIE, TeacherBettieSeenText, TeacherBettieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TeacherBettieAfterBattleText
	waitbutton
	closetext
	end

TeacherBettieSeenText:
	text "Class is in"
	line "session!"
	done

TeacherBettieBeatenText:
	text "Well done!"
	done

TeacherBettieAfterBattleText:
    text "A good trainer"
	line "never stops"
	cont "studying!"
	done

TrainerSupernerdDexter:
	trainer SUPER_NERD, DEXTER, EVENT_BEAT_SUPER_NERD_DEXTER, SupernerdDexterSeenText, SupernerdDexterBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SupernerdDexterAfterBattleText
	waitbutton
	closetext
	end

SupernerdDexterSeenText:
	text "My #DEX has"
	line "data on over 200"
	cont "#MON species!"

	para "Let me show you"
	line "my favorites!"
	done

SupernerdDexterBeatenText:
	text "Fascinating!"
	done

SupernerdDexterAfterBattleText:
	text "I've caught a lot"
	line "of #MON, but I'm"
	cont "poor at battling."
	done

TrainerTeacherDaphne:
	trainer TEACHER, DAPHNE, EVENT_BEAT_TEACHER_DAPHNE, TeacherDaphneSeenText, TeacherDaphneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TeacherDaphneAfterBattleText
	waitbutton
	closetext
	end

TeacherDaphneSeenText:
	text "Pop quiz! Show"
	line "me what you know"
	cont "about battling!"
	done

TeacherDaphneBeatenText:
	text "A+ performance!"
	done

TeacherDaphneAfterBattleText:
	text "You clearly know"
	line "your type match-"
	cont "ups very well!"

	para "Keep battling"
	line "and you'll be a"
	cont "#MON master!"
	done


Route11_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  43,   8, ROUTE_11_GATE, 1
    warp_event  43,   9, ROUTE_11_GATE, 2 
    warp_event  50,   8, ROUTE_11_GATE, 3
    warp_event  50,   9, ROUTE_11_GATE, 4


	def_coord_events

	def_bg_events
	bg_event  3,  7, BGEVENT_READ, Route11Sign
	bg_event 42,  5, BGEVENT_ITEM, Route11HiddenRevive


	def_object_events
	object_event 24, 14, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterOwen, -1
	object_event 25,  1, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterJason, -1
	object_event 31,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerPsychicHerman, -1
	object_event 10,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPsychicFidel, -1
	object_event 44,  2, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route11FruitTree, -1
	object_event  0,  0, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerTeacherBettie, -1
	object_event  0,  1, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSupernerdDexter, -1
	object_event  0,  2, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerTeacherDaphne, -1

