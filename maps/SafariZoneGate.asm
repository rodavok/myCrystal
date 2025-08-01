	object_const_def
	const NATURE_PRESERVE_GATE_DOLL_SHOP_TEACHER
	const NATURE_PRESERVE_BALL_SHOP_FISHER

SafariZoneGate_MapScripts:
	def_scene_scripts

	def_callbacks


SafariZoneGateDollScript:
	faceplayer
	opentext
	writetext SafariZoneGateDollShopText
	waitbutton
SafariZoneGateDoll_LoopScript:
	writetext SafariZoneGateDoll_AskWhichDollText
	special PlaceMoneyTopRight
	loadmenu SafariZoneGateDollMenu
	verticalmenu
	closewindow
	ifequal 1, .Doll1
	ifequal 2, .Doll2
	ifequal 3, .Doll3
	jump SafariZoneGateDoll_Cancel
	
.Doll1
	checkmoney YOUR_MONEY, 3500
	ifequal HAVE_LESS, SafariZoneGateDollNotEnoughMoney
	writetext SafariZoneGateDoll_AreYouSureText
	yesorno
	iffalse SafariZoneGateDoll_Cancel
	checkevent EVENT_DECO_ODDISH_DOLL
	iftrue .AlreadyHaveDecorItem
	setevent EVENT_DECO_ODDISH_DOLL
	takemoney YOUR_MONEY, 3500
	jump SafariZoneGateDoll_FinishScript
	end
	
.Doll2
	checkmoney YOUR_MONEY, 3500
	ifequal HAVE_LESS, SafariZoneGateDollNotEnoughMoney
	writetext SafariZoneGateDoll_AreYouSureText
	yesorno
	iffalse SafariZoneGateDoll_Cancel
	checkevent EVENT_DECO_POLIWAG_DOLL
	iftrue .AlreadyHaveDecorItem
	setevent EVENT_DECO_POLIWAG_DOLL
	takemoney YOUR_MONEY, 3500
	jump SafariZoneGateDoll_FinishScript
	end
	
.Doll3
	checkmoney YOUR_MONEY, 3500
	ifequal HAVE_LESS, SafariZoneGateDollNotEnoughMoney
	writetext SafariZoneGateDoll_AreYouSureText
	yesorno
	iffalse SafariZoneGateDoll_Cancel
	checkevent EVENT_DECO_WEEDLE_DOLL
	iftrue .AlreadyHaveDecorItem
	setevent EVENT_DECO_WEEDLE_DOLL
	takemoney YOUR_MONEY, 3500
	jump SafariZoneGateDoll_FinishScript
	end
	
.AlreadyHaveDecorItem
	writetext SafariZoneGateDoll_AlreadyHaveDecoText
	waitbutton
	jump SafariZoneGateDoll_LoopScript
	
		
SafariZoneGateDollMenu:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 4, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 3 ; items
	db "ODDISH  ¥3.5k@"
	db "POLIWAG ¥3.5k@"
	db "WEEDLE  ¥3.5k@"
	
SafariZoneGateDoll_FinishScript:
	waitsfx
	playsound SFX_TRANSACTION
	writetext SafariZoneGateDoll_HereYouGoText
	waitbutton
	jump SafariZoneGateDoll_LoopScript

SafariZoneGateDoll_Cancel:
	writetext SafariZoneGateDollTakeCare
	waitbutton
	closetext
	end
		
SafariZoneGateDollNotEnoughMoney:
	writetext SafariZoneGateDollNotEnoughMoneyText
	waitbutton
	closetext
	end

SafariZoneGateDollShopText:
	text "I've got the"
	line "cutest DOLLs in"
	cont "all of JOHTO!"

	para "Want to check"
	cont "them out?"
	done
	
SafariZoneGateDoll_AskWhichDollText:
	text "Which DOLL would"
	line "you like?"
	done
	
SafariZoneGateDoll_AreYouSureText:
	text "Are you sure?"
	done

SafariZoneGateDoll_AlreadyHaveDecoText:
	text "You already have"
	line "this DOLL!"
	done

SafariZoneGateDoll_HereYouGoText:
	text "Here you go! We"
	line "will deliver this"
	
	para "item to your home"
	line "without delay!"
	done

SafariZoneGateDollNotEnoughMoneyText:
	text "I'm sorry, but it"
	line "seems you don't"
	cont "have enough money."
	done
	
SafariZoneGateDollTakeCare:
	text "It was a pleasure."
	line "Take care!"
	done

SafariZoneBallShopScript:
    jumptextfaceplayer SafariZoneBallShopText

SafariZoneBallShopText:
    text "Welcome to the"   
    line "BALL SHOP!"
    cont "We're not open."
    done

SafariZoneGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 11, SAFARI_ZONE_BETA_GATE, 1
    ;warp_event 15, 13, NATURE_PRESERVE_POKECENTER, 1 


	def_coord_events

	def_bg_events

	def_object_events
	object_event 8,  13, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, SafariZoneGateDollScript, -1
    object_event 8,   7, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SafariZoneBallShopScript, -1
