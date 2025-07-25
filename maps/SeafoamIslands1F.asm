	object_const_def
	const SEAFOAMISLANDS1F_BOULDER1
	const SEAFOAMISLANDS1F_BOULDER2

SeafoamIslands1F_MapScripts:
	def_scene_scripts

	def_callbacks
		callback MAPCALLBACK_CMDQUEUE, SeafoamIslands1FSetUpStoneTableCallback
	
SeafoamIslands1FSetUpStoneTableCallback:
	writecmdqueue .CommandQueue
	endcallback

.CommandQueue:
	cmdqueue CMDQUEUE_STONETABLE, .StoneTable ; check if any stones are sitting on a warp

.StoneTable:
	stonetable 6, SEAFOAMISLANDS1F_BOULDER1, .Boulder1
	stonetable 7, SEAFOAMISLANDS1F_BOULDER2, .Boulder2
	db -1 ; end
.Boulder1:
	disappear SEAFOAMISLANDS1F_BOULDER1
	clearevent EVENT_BOULDER_IN_SEAFOAM_ISLANDS_1F_1A
	sjump .FinishBoulder

.Boulder2:
	disappear SEAFOAMISLANDS1F_BOULDER2
	clearevent EVENT_BOULDER_IN_SEAFOAM_ISLANDS_1F_2A
	sjump .FinishBoulder

.FinishBoulder:
	pause 30
	scall .BoulderFallsThrough
	opentext
	writetext SeafoamIslands1FBoulderFellThroughText
	waitbutton
	closetext
	end

.BoulderFallsThrough:
	playsound SFX_STRENGTH
	earthquake 80
	end

SeafoamIslands1FBoulder:
	jumpstd StrengthBoulderScript

SeafoamIslands1FBoulderFellThroughText:
	text "The boulder fell"
	line "through."
	done

SeafoamIslands1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  15, SEAFOAM_ISLANDS_NORTH, 2
	warp_event 27,  15, SEAFOAM_GYM, 2
	warp_event  7,   5, SEAFOAM_ISLANDS_B1F, 1
	warp_event 25,   3, SEAFOAM_ISLANDS_B1F, 2
	warp_event 23,  15, SEAFOAM_ISLANDS_B1F, 3
	warp_event 17,   6, SEAFOAM_ISLANDS_B1F, 4 ; Hole
	warp_event 24,   7, SEAFOAM_ISLANDS_B1F, 5 ; Hole

	def_coord_events

	def_bg_events

	def_object_events
	object_event 18,  9, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslands1FBoulder, EVENT_BOULDER_IN_SEAFOAM_ISLANDS_1F_1
	object_event 26,  6, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslands1FBoulder, EVENT_BOULDER_IN_SEAFOAM_ISLANDS_1F_2

