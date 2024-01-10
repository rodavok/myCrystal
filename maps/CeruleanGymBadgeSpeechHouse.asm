	object_const_def
	const CERULEANGYMBADGESPEECHHOUSE_POKEFAN_M

CeruleanGymBadgeSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanGymBadgeSpeechHousePokefanMScript:
	jumptextfaceplayer CeruleanGymBadgeSpeechHousePokefanMText

CeruleanGymBadgeSpeechHousePokefanMText:
	text "Are you collecting"
	line "KANTO GYM BADGES?"
	done

CeruleanTutorScript:
	faceplayer
	opentext
	writetext Ceruleanaskteachamovetext
	yesorno
	iffalse .Refused
	writetext CeruleanTutorWhichMoveShouldITeachText
	loadmenu .MoveMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .ThunderWave
	ifequal 2, .LovelyKiss
	ifequal 3, .FutureSight
	sjump .Incompatible

.ThunderWave:
	setval THUNDER_WAVE
	writetext CeruleanTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.LovelyKiss:
	setval LOVELY_KISS
	writetext CeruleanTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.FutureSight:
	setval FUTURE_SIGHT
	writetext CeruleanTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

	
.Refused:
	writetext CeruleanTutorAwwButTheyreAmazingText
	waitbutton
	closetext
	end
	
.Incompatible:
	writetext CeruleanTutorBButText
	waitbutton
	closetext
	end

.TeachMove:
	writetext CeruleanTutorIfYouUnderstandYouveMadeItText
	waitbutton
	writetext CeruleanTutorFarewellKidText
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
	db 4 ; items
	db "THUNDER WAVE@"
	db "LOVELY KISS@"
	db "FUTURE SIGHT@"
	db "CANCEL@"

Ceruleanaskteachamovetext:
	text "I can teach your"
	line "#MON amazing"

	para "moves if you'd"
	line "like."

	para "Should I teach a"
	line "new move?"
	done


CeruleanTutorAwwButTheyreAmazingText:
	text "Come back here"
	line "if you want to"
	
	para "teach your"
	line "#MON a new"
	cont "move!"
	done

CeruleanTutorWhichMoveShouldITeachText:
	text "Great! You won't"
	line "regret it!"

	para "Which move should"
	line "I teach?"
	done


CeruleanTutorIfYouUnderstandYouveMadeItText:
	text "If you understand"
	line "what's so amazing"

	para "about this move,"
	line "you've made it as"
	cont "a trainer."
	done

CeruleanTutorFarewellKidText:
	text "Farewell and"
	line "good luck on"
	cont "your journey!"
	done

CeruleanTutorBButText:
	text "Your #MON"
	line "can't learn this"
	cont "move…"
	done

CeruleanTutorMoveText:
	text_start
	done

CeruleanGymBadgeSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 1
	warp_event  3,  7, CERULEAN_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanGymBadgeSpeechHousePokefanMScript, -1
	object_event  4,  3, SPRITE_TEACHER,   SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanTutorScript, -1
