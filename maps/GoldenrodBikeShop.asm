	object_const_def
	const GOLDENRODBIKESHOP_CLERK

GoldenrodBikeShop_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodBikeShopNoopScene: ; unreferenced
	end

GoldenrodBikeShopClerkScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_BICYCLE
	iftrue .GotBicycle
	writetext GoldenrodBikeShopClerkIntroText
	yesorno
	iffalse .Refused
	writetext GoldenrodBikeShopClerkAgreedText
	promptbutton
	waitsfx
	giveitem BICYCLE
	writetext BorrowedABicycleText
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	setflag ENGINE_BIKE_SHOP_CALL_ENABLED
	setevent EVENT_GOT_BICYCLE
.GotBicycle:
	writetext GoldenrodBikeShopClerkFirstRateBikesText
	waitbutton
	closetext
	end

.Refused:
	writetext GoldenrodBikeShopClerkRefusedText
	waitbutton
	closetext
	end

GoldenrodBikeShopJustReleasedCompactBike: ; unreferenced
	jumptext GoldenrodBikeShopJustReleasedCompactBikeText

GoldenrodBikeShopBicycle:
	jumptext GoldenrodBikeShopBicycleText

GoldenrodBikeShopClerkIntroText:
	text "…sigh… I moved"
	line "here, but I can't"

	para "sell my BICYCLES."
	line "Why is that?"

	para "Could you ride a"
	line "BICYCLE and adver-"
	cont "tise for me?"
	done

GoldenrodBikeShopClerkAgreedText:
	text "Really? Great!"

	para "Give me your name"
	line "and phone number,"

	para "and I'll loan you"
	line "a BICYCLE."
	done

BorrowedABicycleText:
	text "<PLAYER> borrowed a"
	line "BICYCLE."
	done

GoldenrodBikeShopClerkFirstRateBikesText:
	text "My BICYCLES are"
	line "first-rate! You"

	para "can ride them"
	line "anywhere."
	done

GoldenrodBikeShopClerkRefusedText:
	text "…sigh… Oh, for"
	line "the kindness of"
	cont "people…"
	done

GoldenrodBikeShopJustReleasedCompactBikeText:
	text "Just released!"

	para "First-rate compact"
	line "BICYCLES!"
	done

GoldenrodBikeShopBicycleText:
	text "It's a shiny new"
	line "BICYCLE!"
	done

GoldenrodTutorScript:
	faceplayer
	opentext
	writetext goldenrodaskteachamovetext
	yesorno
	iffalse .Refused
	writetext GoldenrodTutorWhichMoveShouldITeachText
	loadmenu .MoveMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Bubblebeam
	ifequal 2, .Ancientpower
	ifequal 3, .FaintAttack
	ifequal 4, .TakeDown
	sjump .Incompatible

.Bubblebeam:
	setval BUBBLEBEAM
	writetext GoldenrodTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.Ancientpower:
	setval ANCIENTPOWER
	writetext GoldenrodTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.FaintAttack:
	setval FAINT_ATTACK
	writetext GoldenrodTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.TakeDown:
	setval TAKE_DOWN
	writetext GoldenrodTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible
	
.Refused:
	writetext GoldenrodTutorAwwButTheyreAmazingText
	waitbutton
	closetext
	end
	
.Incompatible:
	writetext GoldenrodTutorBButText
	waitbutton
	closetext
	end

.TeachMove:
	writetext GoldenrodTutorIfYouUnderstandYouveMadeItText
	waitbutton
	writetext GoldenrodTutorFarewellKidText
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
	db "BUBBLEBEAM@"
	db "ANCIENTPOWER@"
	db "FAINT ATTACK@"
	db "TAKE DOWN@"
	db "CANCEL@"

goldenrodaskteachamovetext:
	text "I can teach your"
	line "#MON amazing"

	para "moves if you'd"
	line "like."

	para "Should I teach a"
	line "new move?"
	done


GoldenrodTutorAwwButTheyreAmazingText:
	text "Come back here"
	line "if you want to"
	
	para "teach your"
	line "#MON a new"
	cont "move!"
	done

GoldenrodTutorWhichMoveShouldITeachText:
	text "Great! You won't"
	line "regret it!"

	para "Which move should"
	line "I teach?"
	done


GoldenrodTutorIfYouUnderstandYouveMadeItText:
	text "If you understand"
	line "what's so amazing"

	para "about this move,"
	line "you've made it as"
	cont "a trainer."
	done

GoldenrodTutorFarewellKidText:
	text "Farewell and"
	line "good luck on"
	cont "your journey!"
	done

GoldenrodTutorBButText:
	text "Your #MON"
	line "can't learn this"
	cont "move…"
	done

GoldenrodTutorMoveText:
	text_start
	done

GoldenrodBikeShop_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 2
	warp_event  3,  7, GOLDENROD_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  1,  2, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  0,  3, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  1,  3, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  0,  5, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  1,  5, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  0,  6, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  1,  6, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  6,  6, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  7,  6, BGEVENT_READ, GoldenrodBikeShopBicycle

	def_object_events
	object_event  7,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodBikeShopClerkScript, -1
	object_event  4,  5, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodTutorScript, -1

