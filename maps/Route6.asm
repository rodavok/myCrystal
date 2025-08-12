	object_const_def
	const ROUTE6_POKEFAN_M1
	const ROUTE6_POKEFAN_M2
	const ROUTE6_POKEFAN_M3
	const ROUTE6_YOUNGSTER1
	const ROUTE6_TEACHER 
	const ROUTE6_YOUNGSTER2

Route6_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerPokefanmRex:
	trainer POKEFANM, REX, EVENT_BEAT_POKEFANM_REX, PokefanmRexSeenText, PokefanmRexBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmRexAfterBattleText
	waitbutton
	closetext
	end

TrainerPokefanmAllan:
	trainer POKEFANM, ALLAN, EVENT_BEAT_POKEFANM_ALLAN, PokefanmAllanSeenText, PokefanmAllanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmAllanAfterBattleText
	waitbutton
	closetext
	end

Route6PokefanMScript:
	jumptextfaceplayer Route6PokefanMText

Route6UndergroundPathSign:
	jumptext Route6UndergroundPathSignText

Route6PokefanMText:
	text "The road is closed"
	line "until the problem"

	para "at the POWER PLANT"
	line "is solved."
	done

Route6UndergroundPathSignText:
	text "UNDERGROUND PATH"

	para "CERULEAN CITY -"
	line "VERMILION CITY"
	done

PokefanmRexSeenText:
	text "My PHANPY is the"
	line "cutest in the"
	cont "world."
	done

PokefanmRexBeatenText:
	text "My PHANPY!"
	done

PokefanmRexAfterBattleText:
	text "Look how adorable"
	line "my PHANPY acts!"

	para "Isn't it cute"
	line "enough to make"
	cont "your heart melt?"
	done

PokefanmAllanSeenText:
	text "My TEDDIURSA is"
	line "the cutest in the"
	cont "world."
	done

PokefanmAllanBeatenText:
	text "My TEDDIURSA!"
	done

PokefanmAllanAfterBattleText:
	text "Look how adorable"
	line "my TEDDIURSA acts!"

	para "Isn't it cute"
	line "enough to make"
	cont "your heart melt?"
	done

TrainerYoungsterTeddy:
	trainer YOUNGSTER, TEDDY, EVENT_BEAT_YOUNGSTER_TEDDY, YoungsterTeddySeenText, YoungsterTeddyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterTeddyAfterBattleText
	waitbutton
	closetext
	end

YoungsterTeddySeenText:
	text "I'm on a field"
	line "trip with my"
	cont "teacher!"
	done

YoungsterTeddyBeatenText:
	text "Aww, I lost..."
	done

YoungsterTeddyAfterBattleText:
	text "Even though I"
	line "lost, battling is"
	cont "so much fun!"
	done

TrainerTeacherSadayo:
	trainer TEACHER, SADAYO, EVENT_BEAT_TEACHER_SADAYO, TeacherSadayoSeenText, TeacherSadayoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TeacherSadayoAfterBattleText
	waitbutton
	closetext
	end

TeacherSadayoSeenText:
	text "Time for a lesson"
	line "in battling!"
	done

TeacherSadayoBeatenText:
	text "Class dismissed!"
	done

TeacherSadayoAfterBattleText:
	para "Remember: type"
	line "advantages are"
	cont "key to victory!"
	done

TrainerYoungsterFinn:
	trainer YOUNGSTER, FINN, EVENT_BEAT_YOUNGSTER_FINN, YoungsterFinnSeenText, YoungsterFinnBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterFinnAfterBattleText
	waitbutton
	closetext
	end

YoungsterFinnSeenText:
	text "Not so fast!"
	done

YoungsterFinnBeatenText:
	text "Yeowch!"
	done

YoungsterFinnAfterBattleText:
	text "KANTO is thick"
	line "with trainers!"

	para "You better carry"
	line "lots of POTIONs!"
	done

Route6HiddenHPUP:
	hiddenitem HP_UP, EVENT_ROUTE_6_HIDDEN_HP_UP

Route6_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  9, ROUTE_6_UNDERGROUND_PATH_ENTRANCE, 1
	warp_event 11,  3, ROUTE_6_SAFFRON_GATE, 3

	def_coord_events

	def_bg_events
	bg_event 19, 11, BGEVENT_READ, Route6UndergroundPathSign
	bg_event  3,  1, BGEVENT_ITEM, Route6HiddenHPUP

	def_object_events
	object_event 17, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 2, Route6PokefanMScript, EVENT_ROUTE_5_6_POKEFAN_M_BLOCKS_UNDERGROUND_PATH
	object_event  9, 17, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerPokefanmRex, -1
	object_event 10, 17, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerPokefanmAllan, -1
	object_event  8, 27, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerYoungsterTeddy, -1
	object_event  8, 26, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerTeacherSadayo, -1
	object_event  3, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerYoungsterFinn, -1
