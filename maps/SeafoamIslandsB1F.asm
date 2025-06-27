	object_const_def
SeafoamIslandsB1F_MapScripts:
	def_scene_scripts

	def_callbacks


SeafoamIslandsB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  5, SEAFOAM_ISLANDS_1F, 3
	warp_event 25,  3, SEAFOAM_ISLANDS_1F, 4
	warp_event 23, 15, SEAFOAM_ISLANDS_1F, 5
	warp_event  1,  1,  SEAFOAM_ISLANDS_1F, 1;hole?
	warp_event  1,  2,  SEAFOAM_ISLANDS_1F, 1;hole?
	warp_event  5,  3, SEAFOAM_ISLANDS_B2F, 1
	warp_event 13,  7, SEAFOAM_ISLANDS_B2F, 2
	warp_event 19, 15, SEAFOAM_ISLANDS_B2F, 3
	warp_event 25, 11, SEAFOAM_ISLANDS_B2F, 4
	warp_event 18,  7, SEAFOAM_ISLANDS_B2F, 5 ; Hole
	warp_event 22,  7, SEAFOAM_ISLANDS_B2F, 6 ; Hole

	def_coord_events

	def_bg_events

	def_object_events

