	object_const_def
	const TOHJO_FALLS_GIOVANNI

TohjoFallsGiovanniRoom_MapScripts:
	def_scene_scripts

	def_callbacks

GiovanniScript:
	faceplayer
	opentext
	writetext GiovanniRocketsAreCallingText
	yesorno
	iffalse .WiseChoice
	writetext GiovanniVeryWellText
	waitbutton
	closetext
	winlosstext GiovanniText_Loss, 0
	loadtrainer ROCKET_BOSS, GIOVANNI
	startbattle
	reloadmapafterbattle
	opentext 
	writetext GiovanniRocketsDefeatedText
	waitbutton
	closetext
	; Radio Tower Left Events
	;setscene SCENE_RADIOTOWER5F_ROCKET_BOSS
	setevent EVENT_BEAT_ROCKET_EXECUTIVEM_3
	; Rival Underground
	checkevent EVENT_RIVAL_BURNED_TOWER ;probably unecessary
	iftrue .Continue
	setevent EVENT_RIVAL_BURNED_TOWER
	setmapscene BURNED_TOWER_1F, SCENE_BURNEDTOWER1F_RIVAL_BATTLE
.Continue
	setevent EVENT_RIVAL_GOLDENROD_UNDERGROUND
	; Radio Tower Right Events
	setevent EVENT_BEAT_ROCKET_EXECUTIVEM_1
	setevent EVENT_CLEARED_RADIO_TOWER
	clearflag ENGINE_ROCKETS_IN_RADIO_TOWER
	setevent EVENT_GOLDENROD_CITY_ROCKET_SCOUT
	setevent EVENT_GOLDENROD_CITY_ROCKET_TAKEOVER
	setevent EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	clearevent EVENT_MAHOGANY_MART_OWNERS
	clearflag ENGINE_ROCKETS_IN_MAHOGANY
	clearevent EVENT_GOLDENROD_CITY_CIVILIANS
	clearevent EVENT_RADIO_TOWER_CIVILIANS_AFTER
	setevent EVENT_BLACKTHORN_CITY_SUPER_NERD_BLOCKS_GYM
	clearevent EVENT_BLACKTHORN_CITY_SUPER_NERD_DOES_NOT_BLOCK_GYM
	setmapscene RADIO_TOWER_5F, SCENE_RADIOTOWER5F_NOOP ; setscene
	setmapscene ECRUTEAK_TIN_TOWER_ENTRANCE, SCENE_ECRUTEAKTINTOWERENTRANCE_SAGE_BLOCKS
	setevent EVENT_TEAM_ROCKET_DISBANDED
	specialphonecall SPECIALCALL_GIOVANNIDEFEATED
	setevent EVENT_BEAT_GIOVANNI
	special FadeBlackQuickly
	disappear TOHJO_FALLS_GIOVANNI
	pause 15
	special FadeInQuickly
	end

.WiseChoice
	writetext GiovanniWiseChoiceText
	waitbutton 
	closetext
	end

GiovanniRocketsAreCallingText:
	text "Three years ago…"
	line "A child about your"

	para "age defeated the"
	line "powerful criminal"

	para "organization known"
	line "as TEAM ROCKET,"

	para "and I, GIOVANNI,"
	line "went into hiding."

	para "Now, TEAM ROCKET"
	line "has grown strong"

	para "once more, and"
	line "have commandeered"

	para "the RADIO TOWER"
	line "in order to call"

	para "me out of hiding."
	line "Do you intend to"

	para "stop them here and"
	line "now, by defeating"
	cont "me, their leader?"
	done

GiovanniText_Loss:
    text "…"
    done

GiovanniVeryWellText:
	text "Very well. I will"
	line "have to make an"

	para "example of you."
	line "TEAM ROCKET will"

	para "not be undone by a"
	line "mere child again!"
	done

GiovanniWiseChoiceText:
	text "Wise decision."
	line "Now begone!"
	done

GiovanniRocketsDefeatedText:
	text "You're even stron-"
	line "ger than that boy"
	cont "who defeated us"

	para "three years ago…"
	line "There's no hope"
	cont "for our organizat-"
	
	para "ion if we can't"
	line "even handle brats"
	cont "like you."

	para "Fine. I will call"
	line "my ROCKETS and ask"
	cont "them to surrender."

	para "The future belongs"
	line "to you now."
	
	para "Go show your stre-"
	line "ngth to the world."
	done

TohjoFallsGiovanniRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 5, 7, TOHJO_FALLS, 3

	def_coord_events

	def_bg_events

	def_object_events
    object_event  5,  2, SPRITE_ROCKET_BOSS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GiovanniScript, EVENT_BEAT_GIOVANNI

