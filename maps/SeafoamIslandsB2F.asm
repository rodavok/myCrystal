	object_const_def
SeafoamIslandsB2F_MapScripts:
	def_scene_scripts

	def_callbacks


SeafoamIslandsB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  3, SEAFOAM_ISLANDS_B2F, 6
	warp_event 13,  7, SEAFOAM_ISLANDS_B2F, 7
	warp_event 19, 15, SEAFOAM_ISLANDS_B2F, 8
	warp_event 25, 13, SEAFOAM_ISLANDS_B2F, 9
	warp_event 18,  7, SEAFOAM_ISLANDS_B2F, 5 ; Hole
	warp_event 22,  7, SEAFOAM_ISLANDS_B2F, 6 ; Hole
	warp_event  5, 13, SEAFOAM_ISLANDS_B3F, 1
	warp_event 25,  3, SEAFOAM_ISLANDS_B3F, 2
	warp_event 25, 15, SEAFOAM_ISLANDS_B3F, 3
	warp_event 19,  6, SEAFOAM_ISLANDS_B3F, 4 ; Hole
	warp_event 23,  6, SEAFOAM_ISLANDS_B3F, 5 ; Hole

	def_coord_events

	def_bg_events

	def_object_events

