	object_const_def
	const MOUNTMOONGIFTSHOP_GRAMPS1 ; morning only
	const MOUNTMOONGIFTSHOP_GRAMPS2 ; day only
	const MOUNTMOONGIFTSHOP_LASS1 ; morning only
	const MOUNTMOONGIFTSHOP_LASS2 ; day only
	const MOUNTMOONGIFTSHOP_LASS3 ; night only 

MountMoonGiftShop_MapScripts:
	def_scene_scripts

	def_callbacks

MountMoonGiftShopClerkScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_MT_MOON
	closetext
	end

MountMoonGiftShopLassScript:
	jumptextfaceplayer MountMoonGiftShopLassText

MountMoonGiftShopLassText:
	text "When the sun goes"
	line "down, CLEFAIRY"
	cont "come out to play."
	done


MtMoonSquareClefairyScript:
	faceplayer
	opentext
	writetext MtMoonSquareClefairyShopText
	waitbutton
MtMoonSquareClefairy_LoopScript:
	writetext MtMoonSquareClefairy_AskWhichClefairyText
	special PlaceMoneyTopRight
	loadmenu MtMoonSquareClefairyMenu
	verticalmenu
	closewindow
	ifequal 1, .Clefairy1
	ifequal 2, .Clefairy2
	jump MtMoonSquareClefairy_Cancel
	
.Clefairy1
	checkmoney YOUR_MONEY, 3500
	ifequal HAVE_LESS, MtMoonSquareClefairyNotEnoughMoney
	writetext MtMoonSquareClefairy_AreYouSureText
	yesorno
	iffalse MtMoonSquareClefairy_Cancel
	checkevent EVENT_DECO_CLEFAIRY_DOLL
	iftrue .AlreadyHaveDecorItem
	setevent EVENT_DECO_CLEFAIRY_DOLL
	takemoney YOUR_MONEY, 3500
	jump MtMoonSquareClefairy_FinishScript
	end
	
.Clefairy2
	checkmoney YOUR_MONEY, 7500
	ifequal HAVE_LESS, MtMoonSquareClefairyNotEnoughMoney
	writetext MtMoonSquareClefairy_AreYouSureText
	yesorno
	iffalse MtMoonSquareClefairy_Cancel
	checkevent EVENT_DECO_POSTER_3
	iftrue .AlreadyHaveDecorItem
	setevent EVENT_DECO_POSTER_3
	takemoney YOUR_MONEY, 7500
	jump MtMoonSquareClefairy_FinishScript
	end
	
.AlreadyHaveDecorItem
	writetext MtMoonSquareClefairy_AlreadyHaveDecoText
	waitbutton
	jump MtMoonSquareClefairy_LoopScript
	
		
MtMoonSquareClefairyMenu:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 4, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 2 ; items
	db "DOLL   ¥3.5k@"
	db "POSTER ¥7.5k@"
	
MtMoonSquareClefairy_FinishScript:
	waitsfx
	playsound SFX_TRANSACTION
	writetext MtMoonSquareClefairy_HereYouGoText
	waitbutton
	jump MtMoonSquareClefairy_LoopScript

MtMoonSquareClefairy_Cancel:
	writetext MtMoonSquareClefairyTakeCare
	waitbutton
	closetext
	end
		
MtMoonSquareClefairyNotEnoughMoney:
	writetext MtMoonSquareClefairyNotEnoughMoneyText
	waitbutton
	closetext
	end



MtMoonSquareClefairyShopText:
	text "It's Monday night!"
	line "The CLEFAIRY are"
	cont "dancing under the"

	para "moon! By the way…"
	line "I've got some"
	cont "CLEFAIRY merch"

	para "for sale that you"
	line "won't find any-"
	cont "where else!"
	done
	
MtMoonSquareClefairy_AskWhichClefairyText:
	text "Which DECORATION"
	line "caught your eye?"
	done
	
MtMoonSquareClefairy_AreYouSureText:
	text "Are you sure?"
	done

MtMoonSquareClefairy_AlreadyHaveDecoText:
	text "You already have"
	line "this DECORATION!"
	done

MtMoonSquareClefairy_HereYouGoText:
	text "Here you go! We"
	line "will deliver this"
	
	para "item to your home"
	line "without delay!"
	done

MtMoonSquareClefairyNotEnoughMoneyText:
	text "I'm sorry, but it"
	line "seems you don't"
	cont "have enough money."
	done
	
MtMoonSquareClefairyTakeCare:
	text "Tourists hoping to"
	line "see the CLEFAIRY"
	cont "help keep this"
	
	para "shop afloat. We"
	line "would be here"
	cont "without you!"
	done

MountMoonGiftShop_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, MOUNT_MOON_SQUARE, 3
	warp_event  4,  7, MOUNT_MOON_SQUARE, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, MORN, 0, OBJECTTYPE_SCRIPT, 0, MountMoonGiftShopClerkScript, -1
	object_event  1,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, DAY, 0, OBJECTTYPE_SCRIPT, 0, MountMoonGiftShopClerkScript, -1
	object_event  1,  6, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, MORN, 0, OBJECTTYPE_SCRIPT, 0, MountMoonGiftShopLassScript, -1
	object_event  5,  4, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, DAY, 0, OBJECTTYPE_SCRIPT, 0, MountMoonGiftShopLassScript, -1
	object_event  4,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, NITE, 0, OBJECTTYPE_SCRIPT, 0, MtMoonSquareClefairyScript, -1
