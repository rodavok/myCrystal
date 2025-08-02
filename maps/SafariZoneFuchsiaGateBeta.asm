SafariZoneFuchsiaGateBeta_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneFuchsiaGateBeta_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  0, SAFARI_ZONE_CENTER, 1
	warp_event  4,  0, SAFARI_ZONE_CENTER, 2
	warp_event  3,  5, FUCHSIA_CITY, 7
	warp_event  4,  5, FUCHSIA_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
