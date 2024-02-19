	object_const_def
	const SILVER_CAVE_MEW_ROOM_MEW

SilverCaveMewRoom_MapScripts:
	def_scene_scripts

	def_callbacks
    	callback MAPCALLBACK_OBJECTS, SilverCaveMewRoomMewCallback

SilverCaveMewRoomMewCallback:
	checkevent EVENT_FOUGHT_MEW
	iftrue .NoAppear
	.appear

.Appear:
	appear SILVER_CAVE_MEW_ROOM_MEW
	endcallback

.NoAppear:
	disappear SILVER_CAVE_MEW_ROOM_MEW
	endcallback

Mew:
	faceplayer
	opentext
	writetext MewText
	cry MEW
	pause 15
	closetext
	setevent EVENT_FOUGHT_MEW
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon MEW, 50
	startbattle
	disappear SILVER_CAVE_MEW_ROOM_MEW
	reloadmapafterbattle
	end

MewText:
	text "Mew!"
	done


SilverCaveMewRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  23, SILVER_CAVE_OUTSIDE, 1
	warp_event  7,   1, SILVER_CAVE_ITEM_ROOMS, 3


	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  13, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Mew, EVENT_SILVER_CAVE_MEW_ROOM_MEW
