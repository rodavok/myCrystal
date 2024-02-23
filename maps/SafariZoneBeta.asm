SafariZoneBeta_MapScripts:
	def_scene_scripts

	def_callbacks


SafariZoneSignText:
	text "SAFARI ZONE"
	done
SafariZoneBeta_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  10, 23, SAFARI_ZONE_FUCHSIA_GATE_BETA, 1
	warp_event  11, 23, SAFARI_ZONE_FUCHSIA_GATE_BETA, 2

	def_coord_events

	def_bg_events
	bg_event  9, 17, BGEVENT_READ, SafariZoneSignText

	def_object_events
