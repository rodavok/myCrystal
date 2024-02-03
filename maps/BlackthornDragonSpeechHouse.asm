	object_const_def
	const BLACKTHORNDRAGONSPEECHHOUSE_GRANNY
	const BLACKTHORNDRAGONSPEECHHOUSE_EKANS

BlackthornDragonSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

BlackthornDragonSpeechHouseGrannyScript:
	jumptextfaceplayer BlackthornDragonSpeechHouseGrannyText

BlackthornDragonSpeechHouseDratiniScript:
	opentext
	writetext BlackthornDragonSpeechHouseDratiniText
	cry DRATINI
	waitbutton
	closetext
	end

BlackthornDragonSpeechHousePictureBookshelf: ; unreferenced
	jumpstd PictureBookshelfScript

BlackthornDragonSpeechHouseMagazineBookshelf: ; unreferenced
	jumpstd MagazineBookshelfScript

BlackthornDragonSpeechHouseGrannyText:
	text "A clan of trainers"
	line "who can freely"

	para "command dragons"
	line "live right here in"
	cont "BLACKTHORN."

	para "As a result, there"
	line "are many legends"

	para "about dragons in"
	line "this town."
	done

BlackthornDragonSpeechHouseDratiniText:
	text "DRATINI: Draa!"
	done

BlackthornTutorScript:
	faceplayer
	opentext
	writetext Blackthornaskteachamovetext
	yesorno
	iffalse .Refused
	writetext BlackthornTutorWhichMoveShouldITeachText
	loadmenu .MoveMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .RockSlide
	ifequal 2, .Selfdestruct
	ifequal 3, .DrillPeck
	ifequal 4, .PetalDance
	sjump .Incompatible

.RockSlide:
	setval ROCK_SLIDE
	writetext BlackthornTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.Selfdestruct:
	setval SELFDESTRUCT
	writetext BlackthornTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.DrillPeck:
	setval DRILL_PECK
	writetext BlackthornTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.PetalDance:
	setval PETAL_DANCE
	writetext BlackthornTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible
	
.Refused:
	writetext BlackthornTutorAwwButTheyreAmazingText
	waitbutton
	closetext
	end
	
.Incompatible:
	writetext BlackthornTutorBButText
	waitbutton
	closetext
	end

.TeachMove:
	writetext BlackthornTutorIfYouUnderstandYouveMadeItText
	waitbutton
	writetext BlackthornTutorFarewellKidText
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
	db "ROCK SLIDE@"
	db "SELFDESTRUCT@"
	db "DRILL PECK@"
	db "PETAL DANCE@"
	db "CANCEL@"

Blackthornaskteachamovetext:
	text "I can teach your"
	line "#MON powerful"

	para "moves if you'd"
	line "like."

	para "Should I teach a"
	line "new move?"
	done


BlackthornTutorAwwButTheyreAmazingText:
	text "Come back here"
	line "if you want to"
	
	para "teach your"
	line "#MON a new"
	cont "move!"
	done

BlackthornTutorWhichMoveShouldITeachText:
	text "Great! You won't"
	line "regret it!"

	para "Which move should"
	line "I teach?"
	done


BlackthornTutorIfYouUnderstandYouveMadeItText:
	text "These moves will"
	line "take your #MON"
	cont "to the next level!"
	done

BlackthornTutorFarewellKidText:
	text "Farewell and"
	line "good luck on"
	cont "your journey!"
	done

BlackthornTutorBButText:
	text "Okay then."
	done

BlackthornTutorMoveText:
	text_start
	done

BlackthornDragonSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, BLACKTHORN_CITY, 2
	warp_event  3,  7, BLACKTHORN_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GRANNY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornDragonSpeechHouseGrannyScript, -1
	object_event  5,  5, SPRITE_EKANS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BlackthornDragonSpeechHouseDratiniScript, -1
	object_event  2,  5, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BlackthornTutorScript, -1

