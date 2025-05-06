	object_const_def
	const DAYOFWEEKSIBLINGSHOUSE_POKEDEX
	const DAYSOFWEEKSIBLINGHOUSE_MONICA
	

DayOfWeekSiblingsHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, DaysOfWeekSiblingHouseMonicaCallback

DaysOfWeekSiblingHouseMonicaCallback:
	checkevent EVENT_MET_MONICA_OF_MONDAY
	iffalse .MonicaDisappears
	checkevent EVENT_MET_TUSCANY_OF_TUESDAY
	iffalse .MonicaDisappears
	checkevent EVENT_MET_WESLEY_OF_WEDNESDAY
	iffalse .MonicaDisappears
    checkevent EVENT_MET_ARTHUR_OF_THURSDAY
	iffalse .MonicaDisappears
	checkevent EVENT_MET_FRIEDA_OF_FRIDAY
	iffalse .MonicaDisappears
    checkevent EVENT_MET_SANTOS_OF_SATURDAY
	iffalse .MonicaDisappears
	checkevent EVENT_MET_SUNNY_OF_SUNDAY
	iffalse .MonicaDisappears
	appear DAYSOFWEEKSIBLINGHOUSE_MONICA
	endcallback

.MonicaDisappears:
	disappear DAYSOFWEEKSIBLINGHOUSE_MONICA
	endcallback

DayOfWeekSiblingsHousePokedexScript:
	opentext
	writetext DayOfWeekSiblingsHousePokedexText1
	yesorno
	iffalse .End
	writetext DayOfWeekSiblingsHousePokedexText2
	yesorno
	iffalse .End
	checkevent EVENT_MET_MONICA_OF_MONDAY
	iffalse .Tuscany
	writetext MonicaLocText
.Tuscany
	checkevent EVENT_MET_TUSCANY_OF_TUESDAY
	iffalse .Wes
	writetext TuscanyLocText
.Wes
	checkevent EVENT_MET_WESLEY_OF_WEDNESDAY
	iffalse .Arthur
	writetext WesLocText
.Arthur
    checkevent EVENT_MET_ARTHUR_OF_THURSDAY
	iffalse .Frieda
	writetext ArthurLocText
.Frieda
	checkevent EVENT_MET_FRIEDA_OF_FRIDAY
	iffalse .Santos
	writetext FriedaLocText
.Santos
    checkevent EVENT_MET_SANTOS_OF_SATURDAY
	iffalse .Sunny
	writetext SantosLocText
.Sunny
	checkevent EVENT_MET_SUNNY_OF_SUNDAY
	iffalse .WeekNext
	writetext SunnyLocText
.WeekNext
	writetext KeepReading
	yesorno
	iffalse .End
	writetext DayOfWeekSiblingsHousePokedexText4
	waitbutton
.End:
	closetext
	end


DayOfWeekSiblingHouseMonicaScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_WEEK_KANTO_MON
	iftrue .Weekdays
.DayOfWeekKantoStarter:
	writetext WeekTakeThisPokemonText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	checkevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	iftrue .KantoStarterCyndaquil
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .KantoStarterTotodile
	writetext ReceivedWeekSquirtleText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke SQUIRTLE, 5
	setevent EVENT_GOT_WEEK_KANTO_MON
	writetext WeekKantoMonsText
	waitbutton
	closetext
	end
.KantoStarterCyndaquil:
	writetext ReceivedWeekBulbasaurText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke BULBASAUR, 5
	setevent EVENT_GOT_WEEK_KANTO_MON
	writetext WeekKantoMonsText
	waitbutton
	closetext
	end

.KantoStarterTotodile:
	writetext ReceivedMrCharmanderText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke CHARMANDER, 5
	setevent EVENT_GOT_WEEK_KANTO_MON
	writetext WeeknKantoMonsText
	waitbutton
	closetext
	end

.NoRoom:
	writetext WeekPartyFullText
	waitbutton
	closetext
	end

.Weekdays
	writetext MonicaWeekdaysText
	waitbutton
	closetext
	end

DayOfWeekSiblingsHousePokedexText1:
	text "There's something"
	line "written here."

	para "Read it?"
	done

DayOfWeekSiblingsHousePokedexText2:
	text "To my brothers and"
	line "sisters:"

	para "We take pride in"
	line "serving #MON"
	cont "trainers."

	para "When trainers talk"
	line "to you, give them"
	cont "something useful."

	para "Keep reading?"
	done

MonicaLocText:
	text "Monday, MONICA"
	line "ROUTE 40"
	done

TuscanyLocText:
	para "Tuesday, TUSCANY"
	line "ROUTE 29"
	done

WesLocText:
	para "Wednesday, WESLEY"
	line "LAKE OF RAGE"
	done

ArthurLocText:
	para "Thursday, ARTHUR"
	line "ROUTE 36"
	done

FriedaLocText:
	para "Friday, FRIEDA"
	line "ROUTE 32"
	done

SantosLocText:
	para "Saturday, SANTOS"
	line "BLACKTHORN CITY"
	done

SunnyLocText:
	para "Sunday, SUNNY"
	line "ROUTE 37"
	done

KeepReading:
	para "Keep reading?"
	done

DayOfWeekSiblingsHousePokedexText4:
	para "Come back when"
	line "you've met us all"
	
	para "for an extra spec-"
	line "ial gift!"

	para "Love,"
	line "MONICA"
	done

WeekTakeThisPokemonText:
	text "Wow! It takes a"
	line "dedicated #MON"
	
	para "trainer to find"
	line "all seven of my"

	para "siblings. You rea-"
	line "lly know Johto in"
	cont "and out!"

	para "For meeting all of"
	line "us, please accept"

	para "this rare #MON"
	line "as a gift!"
	done


ReceivedWeekSquirtleText:
	text "<PLAYER> received"
	line "SQUIRTLE!"
	done

ReceivedWeekBulbasaurText:
	text "<PLAYER> received"
	line "BULBASAUR!"
	done

ReceivedWeekCharmanderText:
	text "<PLAYER> received"
	line "CHARMANDER!"
	done


WeekKantoMonsText:
	text "This is a rare"
	line "#MON native to"
	cont "KANTO!"

	text "Maybe you can tra-"
	line "in it up at the"
	cont "#MON LEAGUE!"
	done


WeekPartyFullText:
	text "Whoa, wait. You"
	line "can't carry any"
	cont "more #MON."
	done

MonicaWeekdaysText:
	text "It's nice to have"
	line "something differe-"

	para "nt to do every"
	line "day of the week."

    para "Variety is the"
	line "spice of life."
	done



DayOfWeekSiblingsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_26, 3
	warp_event  3,  7, ROUTE_26, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DayOfWeekSiblingsHousePokedexScript, -1
	object_event  2,  3, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MonicaScript, EVENT_DAYOFWEEKSIBLINGHOUSE_MONICA

