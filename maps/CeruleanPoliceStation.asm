	object_const_def
	const CERULEANPOLICESTATION_FISHING_GURU
	const CERULEANPOLICESTATION_POKEFAN_F
	const CERULEANPOLICESTATION_DIGLETT

CeruleanPoliceStation_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanPoliceStationFishingGuruScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_CERULEAN_DIG
	iftrue .GotDig
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext CeruleanPoliceStationFishingGuruText
	waitbutton
	closetext
	end
.ReturnedMachinePart:
	writetext CeruleanPoliceStationFishingGuruGiveDigText
	promptbutton
	verbosegiveitem TM_DIG
	iffalse .NoRoom
	setevent EVENT_GOT_CERULEAN_DIG
.GotDig:
	writetext CeruleanPoliceStationFishingGuruThankYouText
	waitbutton
.NoRoom:
	closetext
	end

CeruleanPoliceStationPokefanFScript:
	jumptextfaceplayer CeruleanPoliceStationPokefanFText

CeruleanDiglett:
	opentext
	writetext CeruleanDiglettText
	cry DIGLETT
	waitbutton
	closetext
	end

CeruleanPoliceStationFishingGuruText:
	text "I heard that some"
	line "shady character is"
	cont "skulking about."

	para "I won't stand for"
	line "it if he turns out"
	cont "to be a thief."
	done

CeruleanPoliceStationFishingGuruGiveDigText:
	text "You don't say? The"
	line "shady character"
	cont "was actually a"

	para "member of TEAM"
	line "ROCKET? And you"
	cont "defeated him?"

	para "Great work! Take"
	line "this as a reward."
	done

CeruleanPoliceStationFishingGuruThankYouText:
	text "I thought TEAM"
	line "ROCKET was gone"
	cont "for good."

	para "Anyway, with folks"
	line "like you around,"
	cont "we can rest easy."
	done

CeruleanPoliceStationPokefanFText:
	text "We were held up by"
	line "robbers before."
	done

CeruleanDiglettText:
	text "DIGLETT: Dug dug."
	done

CeruleanPoliceStation_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 2
	warp_event  3,  7, CERULEAN_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanPoliceStationFishingGuruScript, -1
	object_event  5,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanPoliceStationPokefanFScript, -1
	object_event  3,  5, SPRITE_DIGLETT, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeruleanDiglett, -1
