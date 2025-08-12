	object_const_def
	const ROUTE21_SWIMMER_GIRL
	const ROUTE21_SWIMMER_GUY
	const ROUTE21_FISHER

Route21_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSwimmermSeth:
	trainer SWIMMERM, SETH, EVENT_BEAT_SWIMMERM_SETH, SwimmermSethSeenText, SwimmermSethBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermSethAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerfNikki:
	trainer SWIMMERF, NIKKI, EVENT_BEAT_SWIMMERF_NIKKI, SwimmerfNikkiSeenText, SwimmerfNikkiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfNikkiAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherArnold:
	trainer FISHER, ARNOLD, EVENT_BEAT_FISHER_ARNOLD, FisherArnoldSeenText, FisherArnoldBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherArnoldAfterBattleText
	waitbutton
	closetext
	end

SwimmermSethSeenText:
	text "Land ho! Gotta"
	line "keep going!"
	done

SwimmermSethBeatenText:
	text "Glug…"
	done

SwimmermSethAfterBattleText:
	text "This arrogant guy"
	line "was at CINNABAR's"
	cont "volcano."
	done

SwimmerfNikkiSeenText:
	text "If I win, you have"
	line "to help me with my"
	cont "suntan lotion!"
	done

SwimmerfNikkiBeatenText:
	text "I'm worried about"
	line "sunburn…"
	done

SwimmerfNikkiAfterBattleText:
	text "I have to watch"
	line "out for blemishes"
	cont "caused by the sun."
	done

FisherArnoldSeenText:
	text "I'm bored by fish-"
	line "ing. Let's battle!"
	done

FisherArnoldBeatenText:
	text "Utter failure…"
	done

FisherArnoldAfterBattleText:
	text "I'll just go back"
	line "to fishing…"
	done

TrainerFisherTrent:
	trainer FISHER, TRENT, EVENT_BEAT_FISHER_TRENT, FisherTrentSeenText, FisherTrentBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherTrentAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherVince:
	trainer FISHER, VINCE, EVENT_BEAT_FISHER_VINCE, FisherVinceSeenText, FisherVinceBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherVinceAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherDale:
	trainer FISHER, DALE, EVENT_BEAT_FISHER_DALE, FisherDaleSeenText, FisherDaleBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherDaleAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermHideo:
	trainer SWIMMERM, HIDEO, EVENT_BEAT_SWIMMERM_HIDEO, SwimmermHideoSeenText, SwimmermHideoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermHideoAfterBattleText
	waitbutton
	closetext
	end

FisherTrentSeenText:
	text "I've been angling"
	line "here all morning!"
	done

FisherTrentBeatenText:
	text "You're no fish!"
	done

FisherTrentAfterBattleText:
	text "Water #MON are"
	line "much calmer than"
	cont "I expected."
	done

FisherVinceSeenText:
	text "The fish aren't"
	line "biting today…"
	done

FisherVinceBeatenText:
	text "You bit though!"
	done

FisherVinceAfterBattleText:
	text "Maybe I should"
	line "try a different"
	cont "bait next time."

	para "Got any tips for"
	line "better fishing?"
	done

FisherDaleSeenText:
	text "This is my lucky"
	line "fishing spot!"
	done

FisherDaleBeatenText:
	text "Not so lucky…"
	done

FisherDaleAfterBattleText:
	text "I caught my first"
	line "MAGIKARP here."

	para "It's still my"
	line "favorite spot!"
	done

SwimmermHideoSeenText:
	text "Swimming builds"
	line "strong #MON!"
	done

SwimmermHideoBeatenText:
	text "I'm all washed up!"
	done

SwimmermHideoAfterBattleText:
	text "I swim 50 laps"
	line "every morning."

	para "My #MON swim"
	line "alongside me!"
	done

Route21_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event 11, 28, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfNikki, -1
	object_event  2, 50, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerSwimmermSeth, -1
	object_event 16, 38, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherArnold, -1
	object_event  7, 20, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherTrent, -1
	object_event 14, 39, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherVince, -1
	object_event  4, 21, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherDale, -1
	object_event  8, 44, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerSwimmermHideo, -1

