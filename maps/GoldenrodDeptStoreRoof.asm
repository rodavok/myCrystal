	object_const_def
	const GOLDENRODDEPTSTOREROOF_CLERK
	const GOLDENRODDEPTSTOREROOF_POKEFAN_F
	const GOLDENRODDEPTSTOREROOF_FISHER
	const GOLDENRODDEPTSTOREROOF_TWIN
	const GOLDENRODDEPTSTOREROOF_SUPER_NERD
	const GOLDENRODDEPTSTOREROOF_POKEFAN_M
	const GOLDENRODDEPTSTOREROOF_TEACHER
	const GOLDENRODDEPTSTOREROOF_BUG_CATCHER
	const GOLDENRODDEPTPIKA_POKEFAN

GoldenrodDeptStoreRoof_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, GoldenrodDeptStoreRoofCheckSaleChangeBlockCallback
	callback MAPCALLBACK_OBJECTS, GoldenrodDeptStoreRoofCheckSaleChangeClerkCallback

GoldenrodDeptStoreRoofCheckSaleChangeBlockCallback:
	checkflag ENGINE_GOLDENROD_DEPT_STORE_SALE_IS_ON
	iftrue .SaleIsOn
	endcallback

.SaleIsOn:
	changeblock 0, 2, $3f ; cardboard boxes
	changeblock 0, 4, $0f ; vendor booth
	endcallback

GoldenrodDeptStoreRoofCheckSaleChangeClerkCallback:
	checkflag ENGINE_GOLDENROD_DEPT_STORE_SALE_IS_ON
	iftrue .ChangeClerk
	setevent EVENT_GOLDENROD_SALE_OFF
	clearevent EVENT_GOLDENROD_SALE_ON
	endcallback

.ChangeClerk:
	clearevent EVENT_GOLDENROD_SALE_OFF
	setevent EVENT_GOLDENROD_SALE_ON
	endcallback

GoldenrodDeptStoreRoofClerkScript:
	opentext
	pokemart MARTTYPE_ROOFTOP, 0
	closetext
	end

GoldenrodDeptStoreRoofPokefanFScript:
	jumptextfaceplayer GoldenrodDeptStoreRoofPokefanFText

GoldenrodDeptStoreRoofFisherScript:
	faceplayer
	opentext
	writetext GoldenrodDeptStoreRoofFisherText
	waitbutton
	closetext
	turnobject GOLDENRODDEPTSTOREROOF_FISHER, UP
	end

GoldenrodDeptStoreRoofTwinScript:
	jumptextfaceplayer GoldenrodDeptStoreRoofTwinText

GoldenrodDeptStoreRoofSuperNerdScript:
	opentext
	writetext GoldenrodDeptStoreRoofSuperNerdOhWowText
	waitbutton
	closetext
	turnobject GOLDENRODDEPTSTOREROOF_SUPER_NERD, UP
	opentext
	writetext GoldenrodDeptStoreRoofSuperNerdQuitBotheringMeText
	waitbutton
	closetext
	turnobject GOLDENRODDEPTSTOREROOF_SUPER_NERD, RIGHT
	end

GoldenrodDeptStoreRoofPokefanMScript:
	jumptextfaceplayer GoldenrodDeptStoreRoofPokefanMText

GoldenrodDeptStoreRoofTeacherScript:
	jumptextfaceplayer GoldenrodDeptStoreRoofTeacherText

GoldenrodDeptStoreRoofBugCatcherScript:
	jumptextfaceplayer GoldenrodDeptStoreRoofBugCatcherText

Binoculars1:
	jumptext Binoculars1Text

Binoculars2:
	jumptext Binoculars2Text

Binoculars3:
	jumptext Binoculars3Text

PokeDollVendingMachine:
	jumptext PokeDollVendingMachineText

GoldenRodPikaPokefanScript:
	faceplayer
	opentext
	writetext GoldenrodDeptPikaPokefanShopText
	waitbutton
GoldenrodDeptPikaPokefan_LoopScript:
	writetext GoldenrodDeptPikaPokefan_AskWhichPikaText
	special PlaceMoneyTopRight
	loadmenu GoldenrodDeptPikaPokefanMenu
	verticalmenu
	closewindow
	ifequal 1, .Pika1
	ifequal 2, .Pika2
	ifequal 3, .Pika3
	jump GoldenrodDeptPikaPokefan_Cancel
	
.Pika1
	checkmoney YOUR_MONEY, 3500
	ifequal HAVE_LESS, GoldenrodDeptPikaPokefanNotEnoughMoney
	writetext GoldenrodDeptPikaPokefan_AreYouSureText
	yesorno
	iffalse GoldenrodDeptPikaPokefan_Cancel
	checkevent EVENT_DECO_SURFING_PIKACHU_DOLL
	iftrue .AlreadyHaveDecorItem
	setevent EVENT_DECO_SURFING_PIKACHU_DOLL
	takemoney YOUR_MONEY, 3500
	jump GoldenrodDeptPikaPokefan_FinishScript
	end
	
.Pika2
	checkmoney YOUR_MONEY, 7500
	ifequal HAVE_LESS, GoldenrodDeptPikaPokefanNotEnoughMoney
	writetext GoldenrodDeptPikaPokefan_AreYouSureText
	yesorno
	iffalse GoldenrodDeptPikaPokefan_Cancel
	checkevent EVENT_DECO_POSTER_2
	iftrue .AlreadyHaveDecorItem
	setevent EVENT_DECO_POSTER_2
	takemoney YOUR_MONEY, 7500
	jump GoldenrodDeptPikaPokefan_FinishScript
	end
	
.Pika3
	checkmoney YOUR_MONEY, 11500
	ifequal HAVE_LESS, GoldenrodDeptPikaPokefanNotEnoughMoney
	writetext GoldenrodDeptPikaPokefan_AreYouSureText
	yesorno
	iffalse GoldenrodDeptPikaPokefan_Cancel
	checkevent EVENT_DECO_BED_4
	iftrue .AlreadyHaveDecorItem
	setevent EVENT_DECO_BED_4
	takemoney YOUR_MONEY, 11500
	jump GoldenrodDeptPikaPokefan_FinishScript
	end
	
.AlreadyHaveDecorItem
	writetext GoldenrodDeptPikaPokefan_AlreadyHaveDecoText
	waitbutton
	jump GoldenrodDeptPikaPokefan_LoopScript
	
		
GoldenrodDeptPikaPokefanMenu:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 4, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 3 ; items
	db "DOLL   ¥3.5k@"
	db "POSTER ¥7.5k@"
	db "BED   ¥11.5k@"
	
GoldenrodDeptPikaPokefan_FinishScript:
	waitsfx
	playsound SFX_TRANSACTION
	writetext GoldenrodDeptPikaPokefan_HereYouGoText
	waitbutton
	jump GoldenrodDeptPikaPokefan_LoopScript

GoldenrodDeptPikaPokefan_Cancel:
	writetext GoldenrodDeptPikaPokefanTakeCare
	waitbutton
	closetext
	end
		
GoldenrodDeptPikaPokefanNotEnoughMoney:
	writetext GoldenrodDeptPikaPokefanNotEnoughMoneyText
	waitbutton
	closetext
	end

GoldenrodDeptStoreRoofPokefanFText:
	text "Whew, I'm tired."

	para "I sometimes come"
	line "up to the rooftop"

	para "to take a break"
	line "from shopping."
	done

GoldenrodDeptStoreRoofFisherText:
	text "Pardon? Who says"
	line "an adult can't get"
	cont "into this?"

	para "I'm going to be"
	line "back every day to"

	para "collect all the"
	line "dolls!"
	done

GoldenrodDeptStoreRoofTwinText:
	text "They have bargain"
	line "sales here every"
	cont "so often."
	done

GoldenrodDeptStoreRoofSuperNerdOhWowText:
	text "Oh, wow!"
	done

GoldenrodDeptStoreRoofSuperNerdQuitBotheringMeText:
	text "Will you quit"
	line "bothering me?"
	done

GoldenrodDeptStoreRoofPokefanMText:
	text "There's something"
	line "I really want, but"

	para "I don't have the"
	line "necessary cash…"

	para "Maybe I'll sell"
	line "off the BERRIES"
	cont "I've collected…"
	done

GoldenrodDeptStoreRoofTeacherText:
	text "Oh, everything is"
	line "so cheap!"

	para "I bought so much,"
	line "my PACK's crammed!"
	done

GoldenrodDeptStoreRoofBugCatcherText:
	text "My #MON always"
	line "get paralyzed or"

	para "poisoned when the"
	line "chips are down…"

	para "So I came to buy"
	line "some FULL HEAL."

	para "I wonder if"
	line "there's any left?"
	done

Binoculars1Text:
	text "These binoculars"
	line "let me see far"

	para "away. Maybe I can"
	line "see my own house."

	para "Is it the one with"
	line "the green roof?"
	done

Binoculars2Text:
	text "Hey! Some trainers"
	line "are battling on"
	cont "the road!"

	para "A #MON fired a"
	line "flurry of leaves!"

	para "That makes me feel"
	line "like battling"
	cont "right now!"
	done

Binoculars3Text:
	text "A FISHER caught a"
	line "lot of MAGIKARP…"

	para "They're SPLASHing"
	line "at the same time!"

	para "Look at the water"
	line "going everywhere!"
	done

PokeDollVendingMachineText:
	text "A vending machine"
	line "for #MON dolls?"

	para "Insert money, then"
	line "turn the crank…"

	para "But it's almost"
	line "empty…"
	done

GoldenrodDeptPikaPokefanShopText:
	text "Hehehe! I sell the"
	line "latest PIKACHU"
	cont "merchandise!"

	para "Want to take look"
	cont "at my wares?"
	done
	
GoldenrodDeptPikaPokefan_AskWhichPikaText:
	text "Which DECORATION"
	line "caught your eye?"
	done
	
GoldenrodDeptPikaPokefan_AreYouSureText:
	text "Are you sure?"
	done

GoldenrodDeptPikaPokefan_AlreadyHaveDecoText:
	text "You already have"
	line "this DECORATION!"
	done

GoldenrodDeptPikaPokefan_HereYouGoText:
	text "Here you go! We"
	line "will deliver this"
	
	para "item to your home"
	line "without delay!"
	done

GoldenrodDeptPikaPokefanNotEnoughMoneyText:
	text "I'm sorry, but it"
	line "seems you don't"
	cont "have enough money."
	done
	
GoldenrodDeptPikaPokefanTakeCare:
	text "It was a pleasure."
	line "Take care!"
	done

GoldenrodDeptStoreRoof_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  1, GOLDENROD_DEPT_STORE_6F, 3

	def_coord_events

	def_bg_events
	bg_event 15,  3, BGEVENT_RIGHT, Binoculars1
	bg_event 15,  5, BGEVENT_RIGHT, Binoculars2
	bg_event 15,  6, BGEVENT_RIGHT, Binoculars3
	bg_event  3,  0, BGEVENT_UP, PokeDollVendingMachine

	def_object_events
	object_event  1,  4, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofClerkScript, EVENT_GOLDENROD_SALE_OFF
	object_event 10,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofPokefanFScript, -1
	object_event  2,  1, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofFisherScript, -1
	object_event  3,  4, SPRITE_TWIN, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofTwinScript, EVENT_GOLDENROD_SALE_ON
	object_event 14,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofSuperNerdScript, EVENT_GOLDENROD_SALE_ON
	object_event  7,  0, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofPokefanMScript, EVENT_GOLDENROD_SALE_OFF
	object_event  5,  3, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofTeacherScript, EVENT_GOLDENROD_SALE_OFF
	object_event  7,  6, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofBugCatcherScript, EVENT_GOLDENROD_SALE_OFF
	object_event  1,  6, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenRodPikaPokefanScript, EVENT_GOLDENROD_SALE_OFF

