	object_const_def
	const ECRUTEAKITEMFINDERHOUSE_COOLTRAINER_M
	const ECRUTEAKITEMFINDERHOUSE_POKEDEX

EcruteakItemfinderHouse_MapScripts:
	def_scene_scripts

	def_callbacks

EcruteakItemfinderGuy:
	faceplayer
	opentext
	checkevent EVENT_GOT_ITEMFINDER
	iftrue .itemfinder
	writetext EcruteakItemfinderAdventureText
	yesorno
	iffalse .no
	writetext EcruteakItemfinderTrueSpiritText
	promptbutton
	verbosegiveitem ITEMFINDER
	setevent EVENT_GOT_ITEMFINDER
.itemfinder:
	writetext ItemfinderExplanationText
	waitbutton
	closetext
	end

.no:
	writetext EcruteakItemfinderToEachHisOwnText
	waitbutton
	closetext
	end

EcruteakCityTutorScript:
	faceplayer
	opentext
	writetext ecruteakaskteachamovetext
	yesorno
	iffalse .Refused
	writetext EcruteakCityTutorWhichMoveShouldITeachText
	loadmenu .MoveMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Psybeam
	ifequal 2, .Hypnosis
	ifequal 3, .Submission
	ifequal 4, .Bite
	sjump .Incompatible

.Psybeam:
	setval PSYBEAM
	writetext EcruteakCityTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.Hypnosis:
	setval HYPNOSIS
	writetext EcruteakCityTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.Submission:
	setval SUBMISSION
	writetext EcruteakCityTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.Bite:
	setval BITE
	writetext EcruteakCityTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible
	
.Refused:
	writetext EcruteakCityTutorAwwButTheyreAmazingText
	waitbutton
	closetext
	end
	
.Incompatible:
	writetext EcruteakCityTutorBButText
	waitbutton
	closetext
	end

.TeachMove:
	writetext EcruteakCityTutorIfYouUnderstandYouveMadeItText
	waitbutton
	writetext EcruteakCityTutorFarewellKidText
	waitbutton
	closetext
	end

.MoveMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 15, TEXTBOX_Y
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 5 ; items
	db "PSYBEAM@"
	db "HYPNOSIS@"
	db "SUBMISSION@"
	db "BITE@"
	db "CANCEL@"
EcruteakHistoryBook:
	opentext
	writetext EcruteakHistoryBookText
	yesorno
	iftrue .ReadBook
	closetext
	end

.ReadBook:
	writetext EcruteakTwoTowersText
	yesorno
	iftrue .KeepReading
	closetext
	end

.KeepReading:
	writetext EcruteakThreeMonText
	waitbutton
	closetext
	end

ItemFinderHouseRadio:
	jumpstd Radio2Script

EcruteakItemfinderAdventureText:
	text "Ah. You're on an"
	line "adventure with"
	cont "your #MON?"

	para "Well, what's an"
	line "adventure without"
	cont "treasure hunting?"

	para "Am I right, or am"
	line "I right?"
	done

EcruteakItemfinderTrueSpiritText:
	text "Good! You under-"
	line "stand the true"

	para "spirit of adven-"
	line "ture."

	para "I like that! Take"
	line "this with you."
	done

ItemfinderExplanationText:
	text "There are many"
	line "items lying about"

	para "that aren't ob-"
	line "vious."

	para "Use ITEMFINDER to"
	line "check if there is"

	para "an item on the"
	line "ground near you."

	para "It doesn't show"
	line "the exact spot,"

	para "so you'll have to"
	line "look yourself."

	para "Oh yeah--I heard"
	line "there are items"

	para "in ECRUTEAK's"
	line "BURNED TOWER."
	done

EcruteakItemfinderToEachHisOwnText:
	text "Oh… To each his"
	line "own, I suppose…"
	done

EcruteakHistoryBookText:
	text "HISTORY OF"
	line "ECRUTEAK"

	para "Want to read it?"
	done

EcruteakTwoTowersText:
	text "In ECRUTEAK, there"
	line "were two towers."

	para "Each tower was the"
	line "roost of powerful"
	cont "flying #MON."

	para "But one of the"
	line "towers burned to"
	cont "the ground."

	para "The two #MON"
	line "haven't been seen"
	cont "since…"

	para "Keep reading?"
	done

EcruteakThreeMonText:
	text "ECRUTEAK was also"
	line "home to three"

	para "#MON that raced"
	line "around the town."

	para "They were said to"
	line "have been born of"

	para "water, lightning"
	line "and fire."

	para "But they could not"
	line "contain their"
	cont "excessive power."

	para "So they say the"
	line "three ran like the"

	para "wind off into the"
	line "grassland."
	done


ecruteakaskteachamovetext:
	text "I can teach your"
	line "#MON some"

	para "moves if you'd"
	line "like."

	para "Should I teach a"
	line "new move?"
	done


EcruteakCityTutorAwwButTheyreAmazingText:
	text "Come back here"
	line "if you want to"
	
	para "teach your"
	line "#MON a new"
	cont "move!"
	done

EcruteakCityTutorWhichMoveShouldITeachText:
	text "Great! You won't"
	line "regret it!"

	para "Which move should"
	line "I teach?"
	done


EcruteakCityTutorIfYouUnderstandYouveMadeItText:
	text "Variety is the "
	line "spice of life."
	done


EcruteakCityTutorFarewellKidText:
	text "Farewell and"
	line "good luck on"
	cont "your journey!"
	done

EcruteakCityTutorBButText:
	text "Okay then."
	done

EcruteakCityTutorMoveText:
	text_start
	done

EcruteakItemfinderHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 11
	warp_event  4,  7, ECRUTEAK_CITY, 11

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, ItemFinderHouseRadio

	def_object_events
	object_event  2,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EcruteakItemfinderGuy, -1
	object_event  3,  3, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakHistoryBook, -1
	object_event  5, 3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, EcruteakCityTutorScript, -1
