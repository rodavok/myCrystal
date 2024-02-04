	object_const_def
	const POKESEERSHOUSE_GRANNY

PokeSeersHouse_MapScripts:
	def_scene_scripts

	def_callbacks

SeerScript:
	faceplayer
	opentext
	special PokeSeer
	waitbutton
	closetext
	end

CianwoodTutorScript:
	faceplayer
	opentext
	writetext Cianwoodaskteachamovetext
	yesorno
	iffalse .Refused
	writetext CianwoodTutorWhichMoveShouldITeachText
	loadmenu .MoveMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Reversal
	ifequal 2, .BeatUp
	ifequal 3, .MirrorCoat
	ifequal 4, .Counter
	sjump .Incompatible

.Reversal:
	setval REVERSAL
	writetext CianwoodTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.BeatUp:
	setval BEAT_UP
	writetext CianwoodTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.MirrorCoat:
	setval MIRROR_COAT
	writetext CianwoodTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.Counter:
	setval COUNTER
	writetext CianwoodTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible
	
.Refused:
	writetext CianwoodTutorAwwButTheyreAmazingText
	waitbutton
	closetext
	end
	
.Incompatible:
	writetext CianwoodTutorBButText
	waitbutton
	closetext
	end

.TeachMove:
	writetext CianwoodTutorIfYouUnderstandYouveMadeItText
	waitbutton
	writetext CianwoodTutorFarewellKidText
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
	db "REVERSAL@"
	db "BEAT UP@"
	db "MIRROR COAT@"
	db "COUNTER@"
	db "CANCEL@"

Cianwoodaskteachamovetext:
	text "Even when you've"
	line "got your back"

	para "to the wall,"
	line "never give up!"

	para "Should I teach a"
	line "new move?"
	done


CianwoodTutorAwwButTheyreAmazingText:
	text "Come back here"
	line "if you want to"
	
	para "teach your"
	line "#MON a new"
	cont "move!"
	done

CianwoodTutorWhichMoveShouldITeachText:
	text "Great! You won't"
	line "regret it!"

	para "Which move should"
	line "I teach?"
	done


CianwoodTutorIfYouUnderstandYouveMadeItText:
	text "These moves can"
	line "help your #MON"

	para "in a pinch."
	done

CianwoodTutorFarewellKidText:
	text "Farewell and"
	line "good luck on"
	cont "your journey!"
	done

CianwoodTutorBButText:
	text "Okay then."
	done

CianwoodTutorMoveText:
	text_start
	done

PokeSeersHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CIANWOOD_CITY, 7
	warp_event  3,  7, CIANWOOD_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SeerScript, -1
	object_event  5,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CianwoodTutorScript, -1

