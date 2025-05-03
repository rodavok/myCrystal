	object_const_def
	const INDIGOPLATEAUPOKECENTER1F_NURSE
	const INDIGOPLATEAUPOKECENTER1F_CLERK1
	const INDIGOPLATEAUPOKECENTER1F_CLERK2
	const INDIGOPLATEAUPOKECENTER1F_CLERK3
	const INDIGOPLATEAUPOKECENTER1F_COOLTRAINER_M
	const INDIGOPLATEAUPOKECENTER1F_RIVAL
	const INDIGOPLATEAUPOKECENTER1F_GRAMPS
	const INDIGOPLATEAUPOKECENTER1F_ABRA
	const INDIGOPLATEAUPOKECENTER1F_EUSINE

IndigoPlateauPokecenter1F_MapScripts:
	def_scene_scripts
	scene_script IndigoPlateauPokecenter1FNoopScene, SCENE_INDIGOPLATEAUPOKECENTER1F_RIVAL_BATTLE
	scene_script IndigoPlateauPokecenter1FNoopScene, SCENE_INDIGOPLATEAUPOKECENTER1F_EUSINE_BATTLE


	def_callbacks
	callback MAPCALLBACK_NEWMAP, IndigoPlateauPokecenter1FPrepareElite4Callback

IndigoPlateauPokecenter1FNoopScene:
	end

IndigoPlateauPokecenter1FPrepareElite4Callback:
	setmapscene WILLS_ROOM, SCENE_WILLSROOM_LOCK_DOOR
	setmapscene KOGAS_ROOM, SCENE_KOGASROOM_LOCK_DOOR
	setmapscene BRUNOS_ROOM, SCENE_BRUNOSROOM_LOCK_DOOR
	setmapscene KARENS_ROOM, SCENE_KARENSROOM_LOCK_DOOR
	setmapscene LANCES_ROOM, SCENE_LANCESROOM_LOCK_DOOR
	setmapscene HALL_OF_FAME, SCENE_HALLOFFAME_ENTER
	clearevent EVENT_WILLS_ROOM_ENTRANCE_CLOSED
	clearevent EVENT_WILLS_ROOM_EXIT_OPEN
	clearevent EVENT_KOGAS_ROOM_ENTRANCE_CLOSED
	clearevent EVENT_KOGAS_ROOM_EXIT_OPEN
	clearevent EVENT_BRUNOS_ROOM_ENTRANCE_CLOSED
	clearevent EVENT_BRUNOS_ROOM_EXIT_OPEN
	clearevent EVENT_KARENS_ROOM_ENTRANCE_CLOSED
	clearevent EVENT_KARENS_ROOM_EXIT_OPEN
	clearevent EVENT_LANCES_ROOM_ENTRANCE_CLOSED
	clearevent EVENT_LANCES_ROOM_EXIT_OPEN
	clearevent EVENT_BEAT_ELITE_4_WILL
	clearevent EVENT_BEAT_ELITE_4_KOGA
	clearevent EVENT_BEAT_ELITE_4_BRUNO
	clearevent EVENT_BEAT_ELITE_4_KAREN
	clearevent EVENT_BEAT_CHAMPION_LANCE
	setevent EVENT_LANCES_ROOM_OAK_AND_MARY
	endcallback

	


PlateauRivalBattle1:
	checkevent EVENT_BEAT_RIVAL_IN_MT_MOON
	iffalse PlateauRivalScriptDone
	checkflag ENGINE_INDIGO_PLATEAU_RIVAL_FIGHT ; Is this fight only done once? 
	iftrue PlateauRivalScriptDone
	readvar VAR_WEEKDAY ;Monday and Wednesday
	ifequal SUNDAY, PlateauEusineBattle1
	ifequal TUESDAY, PlateauRivalScriptDone
	ifequal THURSDAY, PlateauRivalScriptDone
	ifequal FRIDAY, PlateauEusineBattle1
	ifequal SATURDAY, PlateauRivalScriptDone
	moveobject INDIGOPLATEAUPOKECENTER1F_RIVAL, 17, 9
	appear INDIGOPLATEAUPOKECENTER1F_RIVAL
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	applymovement INDIGOPLATEAUPOKECENTER1F_RIVAL, PlateauRivalMovement1
	playmusic MUSIC_RIVAL_ENCOUNTER
	turnobject PLAYER, RIGHT
	sjump PlateauRivalBattleCommon

PlateauRivalBattle2:
	checkevent EVENT_BEAT_RIVAL_IN_MT_MOON
	iffalse PlateauRivalScriptDone
	checkflag ENGINE_INDIGO_PLATEAU_RIVAL_FIGHT
	iftrue PlateauRivalScriptDone
	readvar VAR_WEEKDAY
	ifequal SUNDAY, PlateauEusineBattle2
	ifequal TUESDAY, PlateauRivalScriptDone
	ifequal THURSDAY, PlateauRivalScriptDone
	ifequal FRIDAY, PlateauEusineBattle2
	ifequal SATURDAY, PlateauRivalScriptDone
	moveobject INDIGOPLATEAUPOKECENTER1F_RIVAL, 16, 9
	appear INDIGOPLATEAUPOKECENTER1F_RIVAL
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	applymovement INDIGOPLATEAUPOKECENTER1F_RIVAL, PlateauRivalMovement2
	playmusic MUSIC_RIVAL_ENCOUNTER
	turnobject PLAYER, LEFT
PlateauRivalBattleCommon:
	opentext
	writetext PlateauRivalText1
	waitbutton
	closetext
	setevent EVENT_INDIGO_PLATEAU_POKECENTER_RIVAL
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .Totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .Chikorita
	; Cyndaquil
	winlosstext PlateauRivalWinText, PlateauRivalLoseText
	setlasttalked INDIGOPLATEAUPOKECENTER1F_RIVAL
	loadtrainer RIVAL2, RIVAL2_2_TOTODILE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump PlateauRivalPostBattle

.Totodile:
	winlosstext PlateauRivalWinText, PlateauRivalLoseText
	setlasttalked INDIGOPLATEAUPOKECENTER1F_RIVAL
	loadtrainer RIVAL2, RIVAL2_2_CHIKORITA
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump PlateauRivalPostBattle

.Chikorita:
	winlosstext PlateauRivalWinText, PlateauRivalLoseText
	setlasttalked INDIGOPLATEAUPOKECENTER1F_RIVAL
	loadtrainer RIVAL2, RIVAL2_2_CYNDAQUIL
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump PlateauRivalPostBattle

PlateauRivalPostBattle:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext PlateauRivalText2
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement INDIGOPLATEAUPOKECENTER1F_RIVAL, PlateauRivalLeavesMovement
	disappear INDIGOPLATEAUPOKECENTER1F_RIVAL
	setscene SCENE_INDIGOPLATEAUPOKECENTER1F_RIVAL_BATTLE
	playmapmusic
	setflag ENGINE_INDIGO_PLATEAU_RIVAL_FIGHT
PlateauRivalScriptDone:
	end

IndigoPlateauPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

IndigoPlateauPokecenter1FClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_INDIGO_PLATEAU
	closetext
	end

IndigoPlateauPokecenter1FClerkScriptTM1:
	opentext
	pokemart MARTTYPE_STANDARD, MART_INDIGO_PLATEAU_TM1
	closetext
	end


IndigoPlateauPokecenter1FClerkScriptTM2: ;Should include a check requiring 16 badges
	opentext
	pokemart MARTTYPE_STANDARD, MART_INDIGO_PLATEAU_TM2
	closetext
	end


IndigoPlateauPokecenter1FCooltrainerMScript:
	jumptextfaceplayer IndigoPlateauPokecenter1FCooltrainerMText

TeleportGuyScript:
	faceplayer
	opentext
	writetext TeleportGuyText1
	yesorno
	iffalse .No
	writetext TeleportGuyYesText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp NEW_BARK_TOWN, 13, 6
	end

.No:
	writetext TeleportGuyNoText
	waitbutton
	closetext
	end

AbraScript:
	opentext
	writetext AbraText
	cry ABRA
	waitbutton
	closetext
	end

PlateauRivalMovement1:
	step UP
	step UP
	step UP
	step UP
	step UP
	turn_head LEFT
	step_end

PlateauRivalMovement2:
	step UP
	step UP
	step UP
	step UP
	step UP
	turn_head RIGHT
	step_end

PlateauRivalLeavesMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

PlateauEusineBattle1:
	checkflag EVENT_BEAT_ELITE_FOUR
	iffalse PlateauRivalScriptDone
	moveobject INDIGOPLATEAUPOKECENTER1F_EUSINE, 17, 9
	appear INDIGOPLATEAUPOKECENTER1F_EUSINE
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	applymovement INDIGOPLATEAUPOKECENTER1F_EUSINE, PlateauRivalMovement1
	playmusic MUSIC_MYSTICALMAN_ENCOUNTER
	turnobject PLAYER, RIGHT
	sjump PlateauRivalBattleCommon

PlateauEusineBattle2:
	checkflag EVENT_BEAT_ELITE_FOUR
	iffalse PlateauRivalScriptDone
	moveobject INDIGOPLATEAUPOKECENTER1F_EUSINE, 16, 9
	appear INDIGOPLATEAUPOKECENTER1F_EUSINE
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	applymovement INDIGOPLATEAUPOKECENTER1F_EUSINE, PlateauRivalMovement2
	playmusic MUSIC_MYSTICALMAN_ENCOUNTER
	turnobject PLAYER, LEFT
PlateauEusineBattleCommon:
    checkevent EVENT_BEAT_RED
	iftrue PlateauEusineBattleCommon2
	opentext
	writetext PlateauEusineText1
	waitbutton
	closetext
	setevent EVENT_INDIGO_PLATEAU_POKECENTER_EUSINE
	winlosstext PlateauEusineWinText, PlateauEusineLoseText
	setlasttalked INDIGOPLATEAUPOKECENTER1F_EUSINE
	loadtrainer MYSTICALMAN, EUSINE2
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump PlateauEusinePostBattle

PlateauEusineBattleCommon2:
	opentext
	writetext PlateauEusineText1
	waitbutton
	closetext
	setevent EVENT_INDIGO_PLATEAU_POKECENTER_EUSINE
	winlosstext PlateauEusineWinText, PlateauEusineLoseText
	setlasttalked INDIGOPLATEAUPOKECENTER1F_EUSINE
	loadtrainer MYSTICALMAN, EUSINE3
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump PlateauEusinePostBattle

PlateauEusinePostBattle:
	playmusic MUSIC_MYSTICALMAN_ENCOUNTER
	opentext
	writetext PlateauEusineText2
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement INDIGOPLATEAUPOKECENTER1F_EUSINE, PlateauRivalLeavesMovement
	disappear INDIGOPLATEAUPOKECENTER1F_EUSINE
	setscene SCENE_INDIGOPLATEAUPOKECENTER1F_EUSINE_BATTLE
	playmapmusic
	setflag ENGINE_INDIGO_PLATEAU_EUSINE_FIGHT
	end ;possibly needed?

	

IndigoPlateauPokecenter1FCooltrainerMText:
	text "At the #MON"
	line "LEAGUE, you'll get"

	para "tested by the"
	line "ELITE FOUR."

	para "You have to beat"
	line "them all. If you"

	para "lose, you have to"
	line "start all over!"
	done

PlateauRivalText1:
	text "Hold it."

	para "You're going to"
	line "take the #MON"

	para "LEAGUE challenge"
	line "now?"

	para "That's not going"
	line "to happen."

	para "My super-well-"
	line "trained #MON"

	para "are going to pound"
	line "you."

	para "<PLAYER>!"
	line "I challenge you!"
	done

PlateauRivalWinText:
	text "…"

	para "OK--I lost…"
	done

PlateauRivalText2:
	text "…Darn… I still"
	line "can't win…"

	para "I… I have to think"
	line "more about my"
	cont "#MON…"

	para "Humph! Try not to"
	line "lose!"
	done

PlateauRivalLoseText:
	text "…"

	para "Whew…"
	line "With my partners,"

	para "I'm going to be"
	line "the CHAMPION!"
	done

TeleportGuyText1:
	text "Ah! You're chal-"
	line "lenging the ELITE"

	para "FOUR? Are you sure"
	line "you're ready?"

	para "If you need to"
	line "train some more,"

	para "my ABRA can help"
	line "you."

	para "It can TELEPORT"
	line "you home."

	para "Would you like to"
	line "go home now?"
	done

TeleportGuyYesText:
	text "OK, OK. Picture"
	line "your house in your"
	cont "mind…"
	done

TeleportGuyNoText:
	text "OK, OK. The best"
	line "of luck to you!"
	done

AbraText:
	text "ABRA: Aabra…"
	done

PlateauEusineText1:
	text "EUSINE: Yo,"
	line "<PLAYER>!"

	para "You taught me that"
	line "I need to become"
	cont "stronger if I want"

	para "to meet legendary"
	line "#MON."

	para "So I trained to"
	line "take on the #-"
	cont "MON LEAGUE!"

	para "Now! Let me show"
	line "you my power!"
	para 
	done

PlateauEusineWinText:
	text "You're amazing,"
	para "<PLAYER>!"
	done

PlateauEusineText2:
	text "I still can't"
	line "win…"

	para "I… I have to think"
	line "more about my"
	cont "#MON…"

	para "Humph! Try not to"
	line "lose!"
	done

PlateauEusineLoseText:
	text "With this power,"

	para "I will earn"
	line "the respect"

	para "of legends!"
	done

IndigoPlateauPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 13, ROUTE_23, 1
	warp_event  6, 13, ROUTE_23, 2
	warp_event  0, 13, POKECENTER_2F, 1
	warp_event 14,  3, WILLS_ROOM, 1

	def_coord_events
	coord_event 16,  4, SCENE_INDIGOPLATEAUPOKECENTER1F_RIVAL_BATTLE, PlateauRivalBattle1
	coord_event 17,  4, SCENE_INDIGOPLATEAUPOKECENTER1F_RIVAL_BATTLE, PlateauRivalBattle2

	def_bg_events

	def_object_events
	object_event  3,  7, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IndigoPlateauPokecenter1FNurseScript, -1
	object_event 11,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IndigoPlateauPokecenter1FClerkScript, -1
	object_event 12,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IndigoPlateauPokecenter1FClerkScriptTM1, EVENT_INDIGO_TM_CLERK_1
	object_event 13,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IndigoPlateauPokecenter1FClerkScriptTM2, EVENT_INDIGO_TM_CLERK_2
	object_event 11, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IndigoPlateauPokecenter1FCooltrainerMScript, -1
	object_event 16,  9, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_INDIGO_PLATEAU_POKECENTER_RIVAL
	object_event  1,  9, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TeleportGuyScript, EVENT_TELEPORT_GUY
	object_event  0,  9, SPRITE_JYNX, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, AbraScript, EVENT_TELEPORT_GUY
	object_event 16,  9, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_INDIGO_PLATEAU_POKECENTER_RIVAL

