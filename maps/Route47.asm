	object_const_def
	const ROUTE47_POKEFAN_M
	const ROUTE47_YOUNGSTER
	const ROUTE47_COOLTRAINER_F
	const ROUTE47_POKE_BALL

Route47_MapScripts:
	def_scene_scripts

	def_callbacks



TrainerHikerDevin:
	trainer HIKER, DEVIN, EVENT_BEAT_HIKER_DEVIN, HikerDevinSeenText, HikerDevinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerDevinAfterBattleText
	waitbutton
	closetext
	end

TrainerCamperGrant:
	trainer CAMPER, GRANT, EVENT_BEAT_CAMPER_GRANT, CamperGrantSeenText, CamperGrantBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperGrantAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerFKae:
	trainer COOLTRAINERF, KAE, EVENT_BEAT_COOLTRAINERF_KAE, CooltrainerFKaeSeenText, CooltrainerFKaeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerFKaeAfterBattleText
	waitbutton
	closetext
	end

TrainerBeautyEda:
	trainer BEAUTY, EDA, EVENT_BEAT_BEAUTY_EDA, BeautyEdaSeenText, BeautyEdaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyEdaAfterBattleText
	waitbutton
	closetext
	end

Route47Revive:
	itemball REVIVE

Route47Pearl:
	itemball PEARL

Route47Stardust:
	itemball STARDUST 

Route47EggTicket:	
	itemball EGG_TICKET

HikerDevinSeenText:
	text "Longing for ot-"
	line "hers is… "
	cont "what it is…"

	para "But battles are"
	line "battles, so"
	cont "let's go!"
	done

HikerDevinBeatenText:
	text "Wa ha ha!"
	done

HikerDevinAfterBattleText:
	text "After a battle,"
	line "you should always"
	cont "have a good laugh!"
	done

CamperGrantSeenText:
	text "I'm not good with"
	line "large crowds, so"
	
	para "I'm camping out"
    line "here with my"

	para "MON! Are you"
	line "the same way?"
	done

CamperGrantBeatenText:
	text "I should have"
	line "went deeper into"

	para "the mountains,"
	cont "I guess…"
	done

CamperGrantAfterBattleText:
	text "See ya!"
	done


CooltrainerFKaeSeenText:
	text "I'm much stronger"
	line "from training"
	cont "out here!"
	done

CooltrainerFKaeBeatenText:
	text "You're strong too!"
	done

CooltrainerFKaeAfterBattleText:
	text "I figured you were"
	line "an ordinary lone"
	cont "trainer."
	
	para "Boy was I wrong!"
	done

BeautyEdaSeenText:
	text "My heart's feel-"
	line "ings for my boy-"
	cont "friend are as wide"

	para "and as deep as the"
	cont "ocean."
	done

BeautyEdaBeatenText:
	text "You're quite"
	line "something!"
	done

BeautyEdaAfterBattleText:
	text "You should really"
	line "find a wonderful"
	cont "partner, too."
	done


Route47_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 46, 19, CLIFF_EDGE_GATE, 2
	warp_event 36, 19, CLIFF_CAVE, 1
	warp_event 36, 13, CLIFF_CAVE, 6
	warp_event 38, 13, CLIFF_CAVE, 4
	warp_event 26, 15, CLIFF_CAVE, 5
	warp_event 26, 13, CLIFF_CAVE, 7
	warp_event 38, 29, CLIFF_CAVE, 10
	warp_event 46, 23, CLIFF_EDGE_GATE, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event 39, 23, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerDevin, -1
	object_event 28, 18, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerCamperGrant, -1
	object_event 39, 14, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCooltrainerFKae, -1
	object_event 15,  6, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBeautyEda, -1
	object_event 25, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route47Revive, REVIVE, -1
	object_event 23, 26, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route47Pearl, PEARL, -1
	object_event  4, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route47Stardust, STARDUST, -1
	object_event  5,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route47EggTicket, EGG_TICKET, -1
