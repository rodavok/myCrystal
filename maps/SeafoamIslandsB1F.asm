	object_const_def
	const SEAFOAMISLANDS_B1F_BOULDER1
	const SEAFOAMISLANDS_B1F_BOULDER2

SeafoamIslandsB1F_MapScripts:
	def_scene_scripts

	def_callbacks
		callback MAPCALLBACK_CMDQUEUE, SeafoamIslandsB1FSetUpStoneTableCallback

SeafoamIslandsB1FSetUpStoneTableCallback:
	writecmdqueue .CommandQueue
	endcallback

.CommandQueue:
	cmdqueue CMDQUEUE_STONETABLE, .StoneTable ; check if any stones are sitting on a warp

.StoneTable:
	stonetable 10, SEAFOAMISLANDS_B1F_BOULDER1, .Boulder1
	stonetable 11, SEAFOAMISLANDS_B1F_BOULDER2, .Boulder2
	db -1 ; end
.Boulder1:
	disappear SEAFOAMISLANDS_B1F_BOULDER1
	clearevent EVENT_BOULDER_IN_SEAFOAM_ISLANDS_B1F_1A
	sjump .FinishBoulder

.Boulder2:
	disappear SEAFOAMISLANDS_B1F_BOULDER2
	clearevent EVENT_BOULDER_IN_SEAFOAM_ISLANDS_B1F_2A
	sjump .FinishBoulder

.FinishBoulder:
	pause 30
	scall .BoulderFallsThrough
	opentext
	writetext SeafoamIslandsB1FBoulderFellThroughText
	waitbutton
	closetext
	end

.BoulderFallsThrough:
	playsound SFX_STRENGTH
	earthquake 80
	end

SeafoamIslandsB1FBoulder:
	jumpstd StrengthBoulderScript

SeafoamIslandsB1FBoulderFellThroughText:
	text "The boulder fell"
	line "through."
	done

SeafoamIslandsB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  5, SEAFOAM_ISLANDS_1F, 3
	warp_event 25,  3, SEAFOAM_ISLANDS_1F, 4
	warp_event 23, 15, SEAFOAM_ISLANDS_1F, 5
	warp_event 17,  6, SEAFOAM_ISLANDS_1F, 6 ;hole exit
	warp_event 24,  7, SEAFOAM_ISLANDS_1F, 7 ;hole exit
	warp_event  5,  3, SEAFOAM_ISLANDS_B2F, 1
	warp_event 13,  7, SEAFOAM_ISLANDS_B2F, 2
	warp_event 19, 15, SEAFOAM_ISLANDS_B2F, 3
	warp_event 25, 11, SEAFOAM_ISLANDS_B2F, 4
	warp_event 18,  7, SEAFOAM_ISLANDS_B2F, 5 ; Hole
	warp_event 22,  7, SEAFOAM_ISLANDS_B2F, 6 ; Hole

	def_coord_events

	def_bg_events

	def_object_events
	object_event 17,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder, EVENT_BOULDER_IN_SEAFOAM_ISLANDS_1F_1A
	object_event 24,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder, EVENT_BOULDER_IN_SEAFOAM_ISLANDS_1F_2A
