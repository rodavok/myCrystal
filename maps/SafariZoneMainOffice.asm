	object_const_def
	const SAFARIOFFICE_TEACHER


SafariZoneMainOffice_MapScripts:
	def_scene_scripts
	
	def_callbacks

FuchsiaTutorScript:
	faceplayer
	opentext
	writetext Fuchsiaaskteachamovetext
	yesorno
	iffalse .Refused
	writetext FuchsiaTutorWhichMoveShouldITeachText
	loadmenu .MoveMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .BodySlam
	ifequal 2, .TriAttack
	ifequal 3, .HealBell
	ifequal 4, .PayDay
	sjump .Incompatible

.BodySlam:
	setval BODY_SLAM
	writetext FuchsiaTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.TriAttack:
	setval TRI_ATTACK
	writetext FuchsiaTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.HealBell:
	setval HEAL_BELL
	writetext FuchsiaTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.PayDay:
	setval PAY_DAY
	writetext FuchsiaTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible
	
.Refused:
	writetext FuchsiaTutorAwwButTheyreAmazingText
	waitbutton
	closetext
	end
	
.Incompatible:
	writetext FuchsiaTutorBButText
	waitbutton
	closetext
	end

.TeachMove:
	writetext FuchsiaTutorIfYouUnderstandYouveMadeItText
	waitbutton
	writetext FuchsiaTutorFarewellKidText
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
	db "BODY SLAM@"
	db "TRI ATTACK@"
	db "HEAL BELL@"
	db "PAY DAY@"
	db "CANCEL@"


Fuchsiaaskteachamovetext:
	text "I can teach your"
	line "#MON moves "

	para "cause various"
	line "STATUS effects."
	
	para "Would you like"
	line "me to teach a"
	cont "new move?"
	done


FuchsiaTutorAwwButTheyreAmazingText:
	text "Come back here"
	line "if you want to"
	
	para "teach your"
	line "#MON a new"
	cont "move!"
	done

FuchsiaTutorWhichMoveShouldITeachText:
	text "Great! You won't"
	line "regret it!"

	para "Which move should"
	line "I teach?"
	done


FuchsiaTutorIfYouUnderstandYouveMadeItText:
	text "Raising your STATS"
	line "can give your #MON"

	para "an edge in battle."
	done

FuchsiaTutorFarewellKidText:
	text "Farewell and"
	line "good luck on"
	cont "your journey!"
	done

FuchsiaTutorBButText:
	text "Okay then."
	done

FuchsiaTutorMoveText:
	text_start
	done

SafariZoneMainOffice_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, FUCHSIA_CITY, 2
	warp_event  3,  7, FUCHSIA_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  6, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FuchsiaTutorScript, -1

