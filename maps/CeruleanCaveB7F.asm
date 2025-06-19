	object_const_def
    const CERULEAN_CAVE_MEWTWO
    const CERULEAN_CAVE_B7F_POKEBALL1
    const CERULEAN_CAVE_B7F_POKEBALL2
    const CERULEAN_CAVE_B7F_POKEBALL3
    const CERULEAN_CAVE_B7F_POKEBALL4


CeruleanCaveB7F_MapScripts:
	def_scene_scripts

	def_callbacks
    callback MAPCALLBACK_OBJECTS, CeruleanCaveMewtwoCallback

CeruleanCaveMewtwoCallback:
	checkevent EVENT_FOUGHT_MEWTWO
	iftrue .NoAppear
	.appear

.Appear:
	appear CERULEAN_CAVE_MEWTWO
	endcallback

.NoAppear:
	disappear CERULEAN_CAVE_MEWTWO
	endcallback

Mewtwo:
	faceplayer
	opentext
	writetext MewtwoText
	cry MEWTWO
	pause 15
	closetext
	setevent EVENT_FOUGHT_MEWTWO
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon MEWTWO, 75
	startbattle
	disappear CERULEAN_CAVE_MEWTWO
	reloadmapafterbattle
	end

CeruleanCaveB7FUltraBall:
	itemball ULTRA_BALL

CeruleanCaveB7FUltraBall2:
	itemball ULTRA_BALL

CeruleanCaveB7FMaxRevive:
	itemball MAX_REVIVE

CeruleanCaveB7FMaxElixer:
	itemball MAX_ELIXER

MewtwoText:
	text "…"
	done

CeruleanCaveB7F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event   3,   6, CERULEAN_CAVE_B6F, 8



	def_coord_events

	def_bg_events


	def_object_events
	object_event 27, 13, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Mewtwo, EVENT_CERULEAN_CAVE_MEWTWO
	object_event 26,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB7FUltraBall, EVENT_CERULEAN_CAVE_B7F_ULTRA_BALL1
	object_event  2, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB7FUltraBall2, EVENT_CERULEAN_CAVE_B7F_ULTRA_BALL2
	object_event  3, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB7FMaxRevive, EVENT_CERULEAN_CAVE_B7F_MAX_REVIVE
	object_event 15,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB7FMaxElixer, EVENT_CERULEAN_CAVE_B7F_MAX_ELIXER


