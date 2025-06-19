; 	object_const_def
; 	const CERULEAN_CAVE_MEWTWO

; CeruleanCave_MapScripts:
; 	def_scene_scripts

; 	def_callbacks
;     	callback MAPCALLBACK_OBJECTS, CeruleanCaveMewtwoCallback

; CeruleanCaveMewtwoCallback:
; 	checkevent EVENT_FOUGHT_MEWTWO
; 	iftrue .NoAppear
; 	.appear

; .Appear:
; 	appear CERULEAN_CAVE_MEWTWO
; 	endcallback

; .NoAppear:
; 	disappear CERULEAN_CAVE_MEWTWO
; 	endcallback

; Mewtwo:
; 	faceplayer
; 	opentext
; 	writetext MewtwoText
; 	cry MEWTWO
; 	pause 15
; 	closetext
; 	setevent EVENT_FOUGHT_MEWTWO
; 	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
; 	loadwildmon MEWTWO, 70
; 	startbattle
; 	disappear CERULEAN_CAVE_MEWTWO
; 	reloadmapafterbattle
; 	end

; MewtwoText:
; 	text "…"
; 	done


; CeruleanCave_MapEvents:
; 	db 0, 0 ; filler

; 	def_warp_events
; 	warp_event  25,  15, CERULEAN_CITY, 7


; 	def_coord_events

; 	def_bg_events

; 	def_object_events
; 	object_event  6,  4, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Mewtwo, EVENT_CERULEAN_CAVE_MEWTWO
