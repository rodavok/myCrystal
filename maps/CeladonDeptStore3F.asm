	object_const_def
	const CELADONDEPTSTORE3F_CLERK
	const CELADONDEPTSTORE3F_YOUNGSTER
	const CELADONDEPTSTORE3F_GAMEBOY_KID1
	const CELADONDEPTSTORE3F_GAMEBOY_KID2
	const CELADONDEPTSTORE3F_SUPER_NERD
	const CELADONDEPTSTORE3F_CLERK2
CeladonDeptStore3F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonDeptStore3FClerkScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_CELADON_3F
	closetext
	end

CeladonDeptStore3FYoungsterScript:
	jumptextfaceplayer CeladonDeptStore3FYoungsterText

CeladonDeptStore3FGameboyKid1Script:
	faceplayer
	opentext
	writetext CeladonDeptStore3FGameboyKid1Text
	waitbutton
	closetext
	turnobject CELADONDEPTSTORE3F_GAMEBOY_KID1, DOWN
	end

CeladonDeptStore3FGameboyKid2Script:
	faceplayer
	opentext
	writetext CeladonDeptStore3FGameboyKid2Text
	waitbutton
	closetext
	turnobject CELADONDEPTSTORE3F_GAMEBOY_KID2, DOWN
	end

CeladonDeptStore3FSuperNerdScript:
	jumptextfaceplayer CeladonDeptStore3FSuperNerdText

CeladonDeptStore3FElevatorButton:
	jumpstd ElevatorButtonScript

CeladonDeptStore3FDirectory:
	jumptext CeladonDeptStore3FDirectoryText

CeladonDeptStore3FYoungsterText:
	text "I can't decide"
	line "which #MON I"

	para "should use this TM"
	line "on…"
	done

CeladonDeptStore3FGameboyKid1Text:
	text "Uh-oh! I traded my"
	line "#MON without"

	para "removing the UP-"
	line "GRADE from it."
	done

CeladonDeptStore3FGameboyKid2Text:
	text "Yeah! I'm finally"
	line "getting a PORYGON!"

	para "I'm no good at the"
	line "slots, so I could"

	para "never get enough"
	line "coins…"

	para "…Huh?"

	para "The traded PORYGON"
	line "turned into a dif-"
	cont "ferent #MON!"
	done

CeladonDeptStore3FSuperNerdText:
	text "The TM SHOP sells"
	line "some rare moves."
	done

CeladonDeptStore3FDirectoryText:
	text "3F: TM SHOP"

	para "Make Your #MON"
	line "Stronger!"
	done

CeladonDept3FConsoleClerkScript:
	faceplayer
	opentext
	writetext CeladonDept3FConsoleClerkShopText
	waitbutton
CeladonDept3FConsoleClerk_LoopScript:
	writetext CeladonDept3FConsoleClerk_AskWhichConsoleText
	special PlaceMoneyTopRight
	loadmenu CeladonDept3FConsoleClerkMenu
	verticalmenu
	closewindow
	ifequal 1, .Console1
	ifequal 2, .Console2
	ifequal 3, .Console3
	jump CeladonDept3FConsoleClerk_Cancel
	
.Console1
	checkmoney YOUR_MONEY, 50000
	ifequal HAVE_LESS, CeladonDept3FConsoleClerkNotEnoughMoney
	writetext CeladonDept3FConsoleClerk_AreYouSureText
	yesorno
	iffalse CeladonDept3FConsoleClerk_Cancel
	checkevent EVENT_DECO_SNES
	iftrue .AlreadyHaveDecorItem
	setevent EVENT_DECO_SNES
	takemoney YOUR_MONEY, 50000
	jump CeladonDept3FConsoleClerk_FinishScript
	end
	
.Console2
	checkmoney YOUR_MONEY, 50000
	ifequal HAVE_LESS, CeladonDept3FConsoleClerkNotEnoughMoney
	writetext CeladonDept3FConsoleClerk_AreYouSureText
	yesorno
	iffalse CeladonDept3FConsoleClerk_Cancel
	checkevent EVENT_DECO_FAMICOM
	iftrue .AlreadyHaveDecorItem
	setevent EVENT_DECO_FAMICOM
	takemoney YOUR_MONEY, 50000
	jump CeladonDept3FConsoleClerk_FinishScript
	end
	
.Console3
	checkmoney YOUR_MONEY, 50000
	ifequal HAVE_LESS, CeladonDept3FConsoleClerkNotEnoughMoney
	writetext CeladonDept3FConsoleClerk_AreYouSureText
	yesorno
	iffalse CeladonDept3FConsoleClerk_Cancel
	checkevent EVENT_DECO_N64
	iftrue .AlreadyHaveDecorItem
	setevent EVENT_DECO_N64
	takemoney YOUR_MONEY, 50000
	jump CeladonDept3FConsoleClerk_FinishScript
	end
	
.AlreadyHaveDecorItem
	writetext CeladonDept3FConsoleClerk_AlreadyHaveDecoText
	waitbutton
	jump CeladonDept3FConsoleClerk_LoopScript
	
		
CeladonDept3FConsoleClerkMenu:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 4, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 3 ; items
	db "SNES    ¥50k@"
	db "FAMICOM ¥50k@"
	db "N64     ¥50k@"
	
CeladonDept3FConsoleClerk_FinishScript:
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonDept3FConsoleClerk_HereYouGoText
	waitbutton
	jump CeladonDept3FConsoleClerk_LoopScript

CeladonDept3FConsoleClerk_Cancel:
	writetext CeladonDept3FConsoleClerkTakeCare
	waitbutton
	closetext
	end
		
CeladonDept3FConsoleClerkNotEnoughMoney:
	writetext CeladonDept3FConsoleClerkNotEnoughMoneyText
	waitbutton
	closetext
	end



CeladonDept3FConsoleClerkShopText:
	text "I sell the latest"
	line "video game"
	cont "consoles!!"

	para "Want to check 'em"
	cont "out?"
	done
	
CeladonDept3FConsoleClerk_AskWhichConsoleText:
	text "Which console has"
	line "caught your eye?"
	done
	
CeladonDept3FConsoleClerk_AreYouSureText:
	text "Are you sure?"
	done

CeladonDept3FConsoleClerk_AlreadyHaveDecoText:
	text "You already have"
	line "this console!"
	done

CeladonDept3FConsoleClerk_HereYouGoText:
	text "Here you go! We"
	line "will deliver this"
	
	para "item to your home"
	line "without delay!"
	done

CeladonDept3FConsoleClerkNotEnoughMoneyText:
	text "I'm sorry, but it"
	line "seems you don't"
	cont "have enough money."
	done
	
CeladonDept3FConsoleClerkTakeCare:
	text "It was a pleasure."
	line "Take care!"
	done

CeladonDeptStore3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16,  1, CELADON_DEPT_STORE_2F, 1
	warp_event 12,  1, CELADON_DEPT_STORE_4F, 2
	warp_event  1,  1, CELADON_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  1, BGEVENT_READ, CeladonDeptStore3FDirectory
	bg_event  2,  1, BGEVENT_READ, CeladonDeptStore3FElevatorButton

	def_object_events
	object_event 13,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FClerkScript, -1
	object_event  7,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FYoungsterScript, -1
	object_event  9,  2, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FGameboyKid1Script, -1
	object_event 10,  2, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FGameboyKid2Script, -1
	object_event  8,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FSuperNerdScript, -1
	object_event 14,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonDept3FConsoleClerkScript, -1

