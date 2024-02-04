	object_const_def
	const LAKEOFRAGEMAGIKARPHOUSE_FISHING_GURU

LakeOfRageMagikarpHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MagikarpLengthRaterScript:
	faceplayer
	opentext
	checkevent EVENT_LAKE_OF_RAGE_ELIXIR_ON_STANDBY
	iftrue .GetReward
	checkevent EVENT_LAKE_OF_RAGE_ASKED_FOR_MAGIKARP
	iftrue .AskedForMagikarp
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .ClearedRocketHideout
	checkevent EVENT_LAKE_OF_RAGE_EXPLAINED_WEIRD_MAGIKARP
	iftrue .ExplainedHistory
	writetext MagikarpLengthRaterText_LakeOfRageHistory
	waitbutton
	closetext
	setevent EVENT_LAKE_OF_RAGE_EXPLAINED_WEIRD_MAGIKARP
	end

.ExplainedHistory:
	writetext MagikarpLengthRaterText_MenInBlack
	waitbutton
	closetext
	end

.ClearedRocketHideout:
	writetext MagikarpLengthRaterText_WorldsLargestMagikarp
	waitbutton
	closetext
	setevent EVENT_LAKE_OF_RAGE_ASKED_FOR_MAGIKARP
	end

.AskedForMagikarp:
	setval MAGIKARP
	special FindPartyMonThatSpecies
	iffalse .ClearedRocketHideout
	writetext MagikarpLengthRaterText_YouHaveAMagikarp
	waitbutton
	special CheckMagikarpLength
	ifequal MAGIKARPLENGTH_NOT_MAGIKARP, .NotMagikarp
	ifequal MAGIKARPLENGTH_REFUSED, .Refused
	ifequal MAGIKARPLENGTH_TOO_SHORT, .TooShort
	; MAGIKARPLENGTH_BEAT_RECORD
	sjump .GetReward

.GetReward:
	writetext MagikarpLengthRaterText_Memento
	promptbutton
	verbosegiveitem ELIXER
	iffalse .NoRoom
	writetext MagikarpLengthRaterText_Bonus
	waitbutton
	closetext
	clearevent EVENT_LAKE_OF_RAGE_ELIXIR_ON_STANDBY
	end

.NoRoom:
	closetext
	setevent EVENT_LAKE_OF_RAGE_ELIXIR_ON_STANDBY
	end

.TooShort:
	writetext MagikarpLengthRaterText_TooShort
	waitbutton
	closetext
	end

.NotMagikarp:
	writetext MagikarpLengthRaterText_NotMagikarp
	waitbutton
	closetext
	end

.Refused:
	writetext MagikarpLengthRaterText_Refused
	waitbutton
	closetext
	end

LakeOfRageMagikarpHouseUnusedRecordSign: ; unreferenced
	jumptext LakeOfRageMagikarpHouseUnusedRecordText

MagikarpHouseBookshelf:
	jumpstd DifficultBookshelfScript

MagikarpLengthRaterText_LakeOfRageHistory:
	text "LAKE OF RAGE is"
	line "actually a crater"

	para "made by rampaging"
	line "GYARADOS."

	para "The crater filled"
	line "up with rainwater"

	para "and the LAKE was"
	line "formed."

	para "That's the story"
	line "passed on from my"

	para "Grandpa's great-"
	line "great-grandpa."

	para "It used to be that"
	line "you could catch"

	para "lively MAGIKARP"
	line "there, but…"

	para "I don't understand"
	line "what's happening."
	done

MagikarpLengthRaterText_MenInBlack:
	text "The LAKE hasn't"
	line "been normal since"

	para "those men wearing"
	line "black arrived."
	done

MagikarpLengthRaterText_WorldsLargestMagikarp:
	text "LAKE OF RAGE is"
	line "back to normal."

	para "The MAGIKARP have"
	line "returned."

	para "I may yet realize"
	line "my dream of see-"
	cont "ing the world's"
	cont "largest MAGIKARP."

	para "Do you have a ROD?"
	line "Please help me if"
	cont "you do."
	done

MagikarpLengthRaterText_YouHaveAMagikarp:
	text "Ah, you have a"
	line "MAGIKARP! Let's"

	para "see how big that"
	line "baby is."
	done

MagikarpLengthRaterText_Memento:
	text "Wow! This one is"
	line "outstanding!"

	para "I tip my hat to"
	line "you!"

	para "Take this as a"
	line "memento!"
	done

MagikarpLengthRaterText_Bonus:
	text "The record is the"
	line "important thing."

	para "Think of that as"
	line "a bonus!"
	done

MagikarpLengthRaterText_TooShort:
	text "Wow! This one is"
	line "outstanding!"

	para "…I wish I could"
	line "say that, but I've"

	para "seen a bigger one"
	line "before."
	done

MagikarpLengthRaterText_NotMagikarp:
	text "What? That's not a"
	line "MAGIKARP!"
	done

MagikarpLengthRaterText_Refused:
	text "Oh… So you didn't"
	line "get one good"

	para "enough to show me?"
	line "Maybe next time."
	done

LakeOfRageMagikarpHouseUnusedRecordText:
	text "CURRENT RECORD"

	para "@"
	text_ram wStringBuffer3
	text " caught by"
	line "@"
	text_ram wStringBuffer4
	text_end

MahoganyTutorScript:
	faceplayer
	opentext
	writetext Mahoganyaskteachamovetext
	yesorno
	iffalse .Refused
	writetext MahoganyTutorWhichMoveShouldITeachText
	loadmenu .MoveMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .FlameWheel
	ifequal 2, .AuroraBeam
	ifequal 3, .DoubleKick
	ifequal 4, .Thrash
	sjump .Incompatible

.FlameWheel:
	setval FLAME_WHEEL
	writetext MahoganyTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.AuroraBeam:
	setval AURORA_BEAM
	writetext MahoganyTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.DoubleKick:
	setval DOUBLE_KICK
	writetext MahoganyTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.Thrash:
	setval THRASH
	writetext MahoganyTutorMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible
	
.Refused:
	writetext MahoganyTutorAwwButTheyreAmazingText
	waitbutton
	closetext
	end
	
.Incompatible:
	writetext MahoganyTutorBButText
	waitbutton
	closetext
	end

.TeachMove:
	writetext MahoganyTutorIfYouUnderstandYouveMadeItText
	waitbutton
	writetext MahoganyTutorFarewellKidText
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
	db "FLAME WHEEL@"
	db "AURORA BEAM@"
	db "DOUBLE KICK@"
	db "THRASH@"
	db "CANCEL@"

Mahoganyaskteachamovetext:
	text "I can teach your"
	line "#MON some "

	para "moves if you'd"
	line "like."

	para "Should I teach a"
	line "new move?"
	done


MahoganyTutorAwwButTheyreAmazingText:
	text "Come back here"
	line "if you want to"
	
	para "teach your"
	line "#MON a new"
	cont "move!"
	done

MahoganyTutorWhichMoveShouldITeachText:
	text "Great! You won't"
	line "regret it!"

	para "Which move should"
	line "I teach?"
	done


MahoganyTutorIfYouUnderstandYouveMadeItText:
	text "Variety is the"
	line "spice of life."
	done

MahoganyTutorFarewellKidText:
	text "Farewell and"
	line "good luck on"
	cont "your journey!"
	done

MahoganyTutorBButText:
	text "Okay then."
	done

LakeOfRageMagikarpHouseUnusedDummyText: ; unreferenced
	text_end

LakeOfRageMagikarpHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAKE_OF_RAGE, 2
	warp_event  3,  7, LAKE_OF_RAGE, 2

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, MagikarpHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, MagikarpHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MagikarpLengthRaterScript, -1
	object_event  5,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MahoganyTutorScript, -1

