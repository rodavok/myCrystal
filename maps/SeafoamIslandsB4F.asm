	object_const_def
   	const SEAFOAM_ISLANDS_ARTICUNO

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

SeafoamIslandsB4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  9, SEAFOAM_ISLANDS_B3F, 6
	warp_event 25,  3, SEAFOAM_ISLANDS_B3F, 7
	warp_event  3, 16, SEAFOAM_ISLANDS_B4F, 3 ; Hole ??
	warp_event  7, 16, SEAFOAM_ISLANDS_B4F, 4 ; Hole ??

	def_coord_events

	def_bg_events

	def_object_events
	object_event  12,  4, SPRITE_BIRD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Articuno, EVENT_SEAFOAM_ISLANDS_ARTICUNO


