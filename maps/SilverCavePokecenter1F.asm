	object_const_def
	const SILVERCAVEPOKECENTER1F_NURSE
	const SILVERCAVEPOKECENTER1F_GRANNY

SilverCavePokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

SilverCavePokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

SilverCavePokecenter1FGrannyScript:
	jumptextfaceplayer SilverCavePokecenter1FGrannyText

SilverCavePokecenter1FGrannyText:
	text "Trainers who seek"
	line "power climb MT."

	para "SILVER despite its"
	line "many dangers…"

	para "With their trusted"
	line "#MON, they must"

	para "feel they can go"
	line "anywhere…"
	done

MtSilverTutorScript:
	faceplayer
	opentext
	writetext MtSilveraskteachamovetext
	yesorno
	iffalse .Refused
	writetext MtSilverTutorWhichMoveShouldITeachText
	loadmenu .MoveMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .HydroPump
	ifequal 2, .Explosion
	ifequal 3, .BellyDrum
	ifequal 4, .DoubleEdge
	sjump .Incompatible

.HydroPump:
	setval HYDRO_PUMP 
	writetext MtSilverTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.Explosion:
	setval EXPLOSION
	writetext MtSilverTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.BellyDrum:
	setval BELLY_DRUM
	writetext MtSilverTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.DoubleEdge:
	setval DOUBLE_EDGE
	writetext MtSilverTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible
	
.Refused:
	writetext MtSilverTutorAwwButTheyreAmazingText
	waitbutton
	closetext
	end
	
.Incompatible:
	writetext MtSilverTutorBButText
	waitbutton
	closetext
	end

.TeachMove:
	writetext MtSilverTutorIfYouUnderstandYouveMadeItText
	waitbutton
	writetext MtSilverTutorFarewellKidText
	waitbutton
	closetext
	end

.MoveMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 15, TEXTBOX_Y
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 5 ; items
	db "HYDRO PUMP@"
	db "EXPLOSION@"
	db "BELLY DRUM@"
	db "DOUBLE EDGE@"
	db "CANCEL@"

MtSilveraskteachamovetext:
	text "I can teach your"
	line "#MON amazing"

	para "moves if you'd"
	line "like."

	para "Should I teach a"
	line "new move?"
	done


MtSilverTutorAwwButTheyreAmazingText:
	text "Come back here"
	line "if you want to"
	
	para "teach your"
	line "#MON a new"
	cont "move!"
	done

MtSilverTutorWhichMoveShouldITeachText:
	text "Great! You won't"
	line "regret it!"

	para "Which move should"
	line "I teach?"
	done

MtSilverTutorIfYouUnderstandYouveMadeItText:
	text "If you understand"
	line "what's so amazing"

	para "about this move,"
	line "you've made it as"
	cont "a trainer."
	done

MtSilverTutorFarewellKidText:
	text "Farewell and"
	line "good luck on"
	cont "your journey!"
	done

MtSilverTutorBButText:
	text "Your #MON"
	line "can't learn this"
	cont "move…"
	done

MtSilverTutorMoveText:
	text_start
	done

SilverCavePokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, SILVER_CAVE_OUTSIDE, 1
	warp_event  4,  7, SILVER_CAVE_OUTSIDE, 1
	warp_event  7,  4, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilverCavePokecenter1FNurseScript, -1
	object_event  1,  5, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilverCavePokecenter1FGrannyScript, -1
	object_event  8,  4, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MtSilverTutorScript, -1

