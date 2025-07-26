	object_const_def
	const SEAFOAMISLANDS_B2F_BOULDER1
	const SEAFOAMISLANDS_B2F_BOULDER2

SeafoamIslandsB2F_MapScripts:
	def_scene_scripts

	def_callbacks
		callback MAPCALLBACK_CMDQUEUE, SeafoamIslandsB2FSetUpStoneTableCallback


SeafoamIslandsB2FSetUpStoneTableCallback:
	writecmdqueue .CommandQueue
	endcallback

.CommandQueue:
	cmdqueue CMDQUEUE_STONETABLE, .StoneTable ; check if any stones are sitting on a warp

.StoneTable:
	stonetable 10, SEAFOAMISLANDS_B2F_BOULDER1, .Boulder1
	stonetable 11, SEAFOAMISLANDS_B2F_BOULDER2, .Boulder2
	db -1 ; end
.Boulder1:
	disappear SEAFOAMISLANDS_B2F_BOULDER1
	clearevent EVENT_BOULDER_IN_SEAFOAM_ISLANDS_B2F_1A
	sjump .FinishBoulder

.Boulder2:
	disappear SEAFOAMISLANDS_B2F_BOULDER2
	clearevent EVENT_BOULDER_IN_SEAFOAM_ISLANDS_B2F_2A
	sjump .FinishBoulder

.FinishBoulder:
	pause 30
	scall .BoulderFallsThrough
	opentext
	writetext SeafoamIslandsB2FBoulderFellThroughText
	waitbutton
	closetext
	end

.BoulderFallsThrough:
	playsound SFX_STRENGTH
	earthquake 80
	end

SeafoamIslandsB2FBoulder:
	jumpstd StrengthBoulderScript

SeafoamIslandsB2FBoulderFellThroughText:
	text "The boulder fell"
	line "through."
	done

SeafoamIslandsHiddenNugget:
	hiddenitem NUGGET, EVENT_SEAFOAM_ISLANDS_HIDDEN_NUGGET

SeafoamIslandsB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  3, SEAFOAM_ISLANDS_B1F, 6
	warp_event 13,  7, SEAFOAM_ISLANDS_B1F, 7
	warp_event 19, 15, SEAFOAM_ISLANDS_B1F, 8
	warp_event 25, 13, SEAFOAM_ISLANDS_B1F, 9
	warp_event 18,  7, SEAFOAM_ISLANDS_B1F, 5 ; Hole exit
	warp_event 22,  7, SEAFOAM_ISLANDS_B1F, 6 ; Hole exit
	warp_event  5, 13, SEAFOAM_ISLANDS_B3F, 1
	warp_event 25,  3, SEAFOAM_ISLANDS_B3F, 2
	warp_event 25, 15, SEAFOAM_ISLANDS_B3F, 3
	warp_event 19,  6, SEAFOAM_ISLANDS_B3F, 4 ; Hole
	warp_event 23,  6, SEAFOAM_ISLANDS_B3F, 5 ; Hole

	def_coord_events

	def_bg_events
	bg_event 15, 15, BGEVENT_ITEM, SeafoamIslandsHiddenNugget

	def_object_events
	object_event 18,  6, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB2FBoulder, EVENT_BOULDER_IN_SEAFOAM_ISLANDS_B1F_1A
	object_event 23,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB2FBoulder, EVENT_BOULDER_IN_SEAFOAM_ISLANDS_B1F_2A