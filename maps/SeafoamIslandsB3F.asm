	object_const_def
	const SEAFOAMISLANDS_B3F_BOULDER1
	const SEAFOAMISLANDS_B3F_BOULDER2
	const SEAFOAMISLANDS_B3F_BOULDER3
	const SEAFOAMISLANDS_B3F_BOULDER4
	const SEAFOAMISLANDS_B3F_BOULDER5
	const SEAFOAMISLANDS_B3F_BOULDER6


SeafoamIslandsB3F_MapScripts:
	def_scene_scripts

	def_callbacks
		callback MAPCALLBACK_CMDQUEUE, SeafoamIslandsB3FSetUpStoneTableCallback


SeafoamIslandsB3FSetUpStoneTableCallback:
	writecmdqueue .CommandQueue
	endcallback

.CommandQueue:
	cmdqueue CMDQUEUE_STONETABLE, .StoneTable ; check if any stones are sitting on a warp

.StoneTable:
	stonetable  8, SEAFOAMISLANDS_B3F_BOULDER3, .Boulder1
	stonetable  9, SEAFOAMISLANDS_B3F_BOULDER4, .Boulder2
	db -1 ; end

.Boulder1:
	disappear SEAFOAMISLANDS_B3F_BOULDER3
	clearevent EVENT_BOULDER_IN_SEAFOAM_ISLANDS_B3F_3A
	sjump .FinishBoulder

.Boulder2:
	disappear SEAFOAMISLANDS_B3F_BOULDER4
	clearevent EVENT_BOULDER_IN_SEAFOAM_ISLANDS_B3F_4A
	sjump .FinishBoulder

.FinishBoulder:
	pause 30
	scall .BoulderFallsThrough
	opentext
	writetext SeafoamIslandsB3FBoulderFellThroughText
	waitbutton
	closetext
	end

.BoulderFallsThrough:
	playsound SFX_STRENGTH
	earthquake 80
	end

SeafoamIslandsB3FBoulder:
	jumpstd StrengthBoulderScript

SeafoamIslandsB3FBoulderStuck:
	jumptext SeafoamIslandsB3FBoulderStuckText

SeafoamIslandsB3FBoulderFellThroughText:
	text "The boulder fell"
	line "through."
	done

SeafoamIslandsB3FBoulderStuckText:
	text "The boulders are"
	line "blocking the"
	cont "swift current."
	done

SeafoamIslandsB3FHiddenMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_SEAFOAM_ISLANDS_HIDDEN_MAX_ELIXER

SeafoamIslandsB3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 11, SEAFOAM_ISLANDS_B2F, 7
	warp_event 23,  3, SEAFOAM_ISLANDS_B2F, 8
	warp_event 25, 13, SEAFOAM_ISLANDS_B2F, 9
	warp_event 19,  6, SEAFOAM_ISLANDS_B2F, 4 ; Hole exit
	warp_event 23,  6, SEAFOAM_ISLANDS_B2F, 5 ; Hole exit
	warp_event  9,  7, SEAFOAM_ISLANDS_B4F, 1
	warp_event 27,  3, SEAFOAM_ISLANDS_B4F, 2
	warp_event  3, 16, SEAFOAM_ISLANDS_B4F, 3 ; Hole
	warp_event  7, 16, SEAFOAM_ISLANDS_B4F, 4 ; Hole
	



	def_coord_events

	def_bg_events
	bg_event 9, 16, BGEVENT_ITEM, SeafoamIslandsB3FHiddenMaxElixer

	def_object_events
	object_event 18,  5, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB3FBoulderStuck, EVENT_BOULDER_IN_SEAFOAM_ISLANDS_B2F_1A
	object_event 19,  5, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB3FBoulderStuck, EVENT_BOULDER_IN_SEAFOAM_ISLANDS_B2F_2A
	object_event  8, 14, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB3FBoulder, EVENT_BOULDER_IN_SEAFOAM_ISLANDS_B3F_3
	object_event  3, 15, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB3FBoulder, EVENT_BOULDER_IN_SEAFOAM_ISLANDS_B3F_4
	object_event  9, 14, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB3FBoulder, -1 ;Can't fall down
	object_event  5, 14, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB3FBoulder, -1 ;Can't fall down



