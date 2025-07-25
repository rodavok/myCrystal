	object_const_def
   	const SEAFOAM_ISLANDS_ARTICUNO
	const SEAFOAMISLANDS_B4F_BOULDER1
	const SEAFOAMISLANDS_B4F_BOULDER2

SeafoamIslandsB4F_MapScripts:
	def_scene_scripts
	scene_script SeafoamIslandsB4FNoopScene ; unusable

	def_callbacks
    callback MAPCALLBACK_OBJECTS, SeafoamIslandsArticunoCallback


SeafoamIslandsB4FNoopScene:
	end

SeafoamIslandsArticunoCallback:
	checkevent EVENT_FOUGHT_ARTICUNO
	iftrue .NoAppear
	checkitem SILVER_WING
	iftrue .Appear
	sjump .NoAppear

.Appear:
	appear SEAFOAM_ISLANDS_ARTICUNO
	endcallback

.NoAppear:
	disappear SEAFOAM_ISLANDS_ARTICUNO
	endcallback

Articuno:
	faceplayer
	opentext
	writetext ArticunoText
	cry ARTICUNO
	pause 15
	closetext
	setevent EVENT_FOUGHT_ARTICUNO
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon ARTICUNO, 45
	startbattle
	disappear SEAFOAM_ISLANDS_ARTICUNO
	reloadmapafterbattle
	end

ArticunoText:
	text "Gyaoo!"
	done

SeafoamIslandsB4FBoulderStuck:
	jumptext SeafoamIslandsB4FBoulderStuckText

SeafoamIslandsB4FBoulderStuckText:
	text "The boulders are"
	line "blocking the"
	cont "swift current."
	done

SeafoamIslandsHiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_SEAFOAM_ISLANDS_HIDDEN_ULTRA_BALL

SeafoamIslandsTMBlizzard:
	itemball TM_BLIZZARD


SeafoamIslandsB4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  9, SEAFOAM_ISLANDS_B3F, 6
	warp_event 25,  3, SEAFOAM_ISLANDS_B3F, 7
	warp_event  4, 15, SEAFOAM_ISLANDS_B3F, 3 ; Hole Exit
	warp_event  5, 15, SEAFOAM_ISLANDS_B3F, 4 ; Hole Exit

	def_coord_events

	def_bg_events
	bg_event 25, 17, BGEVENT_ITEM, SeafoamIslandsHiddenUltraBall


	def_object_events
	object_event  12,  4, SPRITE_BIRD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Articuno, EVENT_SEAFOAM_ISLANDS_ARTICUNO
	object_event  4, 16, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB4FBoulderStuck, EVENT_BOULDER_IN_SEAFOAM_ISLANDS_B3F_3A
	object_event  5, 16, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB4FBoulderStuck, EVENT_BOULDER_IN_SEAFOAM_ISLANDS_B3F_4A
	object_event  9, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsTMBlizzard, EVENT_SEAFOAM_ISLANDS_TM_BLIZZARD


