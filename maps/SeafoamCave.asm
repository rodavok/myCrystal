	object_const_def
	const SEAFOAM_ISLANDS_ARTICUNO
SeafoamCave_MapScripts:
	def_scene_scripts
	scene_script SeafoamCaveNoopScene ; unusable

	def_callbacks
	callback MAPCALLBACK_OBJECTS, SeafoamIslandsArticunoCallback
SeafoamCaveNoopScene:
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
SeafoamCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  16,  15, ROUTE_20, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  12,  4, SPRITE_BIRD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Articuno, EVENT_SEAFOAM_ISLANDS_ARTICUNO

