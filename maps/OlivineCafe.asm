	object_const_def
	const OLIVINECAFE_SAILOR1
	const OLIVINECAFE_FISHING_GURU
	const OLIVINECAFE_SAILOR2

OlivineCafe_MapScripts:
	def_scene_scripts

	def_callbacks

OlivineCafeStrengthSailorScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM04_STRENGTH
	iftrue .GotStrength
	writetext OlivineCafeStrengthSailorText
	promptbutton
	verbosegiveitem HM_STRENGTH
	setevent EVENT_GOT_HM04_STRENGTH
.GotStrength:
	writetext OlivineCafeStrengthSailorText_GotStrength
	waitbutton
	closetext
	end

OlivineCafeFishingGuruScript:
	jumptextfaceplayer OlivineCafeFishingGuruText

OlivineCafeSailorScript:
	jumptextfaceplayer OlivineCafeSailorText

OlivineCafeStrengthSailorText:
	text "Hah! Your #MON"
	line "sure look like"
	cont "lightweights!"

	para "They don't have"
	line "the power to move"
	cont "boulders aside."

	para "Here, use this"
	line "and teach them"
	cont "STRENGTH!"
	done

OlivineCafeStrengthSailorText_GotStrength:
	text "On the sea, the"
	line "only thing you can"

	para "count on is your"
	line "own good self!"

	para "I'm so proud of my"
	line "buff bod!"
	done

OlivineCafeFishingGuruText:
	text "OLIVINE CAFE's"
	line "menu is chock full"

	para "of hearty fare for"
	line "beefy SAILORS!"
	done

OlivineCafeSailorText:
	text "Whenever I roll"
	line "into this town, I"

	para "always visit the"
	line "OLIVINE CAFE."

	para "Everything on the"
	line "menu makes me feel"

	para "stronger. I can't"
	line "stop eating!"
	done

OlivineTutorScript:
	faceplayer
	opentext
	writetext Olivineaskteachamovetext
	yesorno
	iffalse .Refused
	writetext OlivineTutorWhichMoveShouldITeachText
	loadmenu .MoveMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Present
	ifequal 2, .Supersonic
	ifequal 3, .MetalClaw
	ifequal 4, .MegaDrain
	sjump .Incompatible

.Present:
	setval PRESENT
	writetext OlivineTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.Supersonic:
	setval SUPERSONIC
	writetext OlivineTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.MetalClaw:
	setval METAL_CLAW
	writetext OlivineTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.MegaDrain:
	setval MEGA_DRAIN
	writetext OlivineTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible
	
.Refused:
	writetext OlivineTutorAwwButTheyreAmazingText
	waitbutton
	closetext
	end
	
.Incompatible:
	writetext OlivineTutorBButText
	waitbutton
	closetext
	end

.TeachMove:
	writetext OlivineTutorIfYouUnderstandYouveMadeItText
	waitbutton
	writetext OlivineTutorFarewellKidText
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
	db "PRESENT@"
	db "SUPERSONIC@"
	db "METAL CLAW@"
	db "MEGA DRAIN@"
	db "CANCEL@"

Olivineaskteachamovetext:
	text "I can teach your"
	line "#MON some"

	para "moves if you'd"
	line "like."

	para "Should I teach a"
	line "new move?"
	done


OlivineTutorAwwButTheyreAmazingText:
	text "Come back here"
	line "if you want to"
	
	para "teach your"
	line "#MON a new"
	cont "move!"
	done

OlivineTutorWhichMoveShouldITeachText:
	text "Great! You won't"
	line "regret it!"

	para "Which move should"
	line "I teach?"
	done


OlivineTutorIfYouUnderstandYouveMadeItText:
	text "Variety is the "
	line "spice of life."
	done

OlivineTutorFarewellKidText:
	text "Farewell and"
	line "good luck on"
	cont "your journey!"
	done

OlivineTutorBButText:
	text "Okay then."
	done

OlivineTutorMoveText:
	text_start
	done

OlivineCafe_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, OLIVINE_CITY, 7
	warp_event  3,  7, OLIVINE_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  3, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCafeStrengthSailorScript, -1
	object_event  7,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCafeFishingGuruScript, -1
	object_event  6,  6, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCafeSailorScript, -1
	object_event  5, 4, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OlivineTutorScript, -1
