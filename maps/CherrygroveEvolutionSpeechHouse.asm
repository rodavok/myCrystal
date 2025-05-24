	object_const_def
	const CHERRYGROVEEVOLUTIONSPEECHHOUSE_GRAMPS

CherrygroveEvolutionSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CherrygroveEvolutionSpeechHouseBookshelf:
	jumpstd MagazineBookshelfScript

	SwarmGrampsScript:
		faceplayer
		opentext
		checkflag ENGINE_SWARM
		iftrue .skiprandomswarm
		random 7
		ifequal 0, .dunsparce
		ifequal 1, .yanma
		ifequal 2, .qwilfish
		ifequal 3, .murkrow 
		ifequal 4, .snubbull 
		ifequal 5, .marill 
		ifequal 6, .remoraid
	
	.dunsparce
		setflag ENGINE_SWARM
		swarm DARK_CAVE_VIOLET_ENTRANCE
		writetext SwarmDunsparceText
		waitbutton
		closetext
		end
	
	.yanma
		setflag ENGINE_SWARM
		swarm ROUTE_35
		writetext SwarmYanmaText
		waitbutton
		closetext
		end
	
	.qwilfish
		setflag ENGINE_SWARM
		swarm ROUTE_32
		writetext SwarmQwilfishText
		waitbutton
		closetext
		end
	
	.murkrow
		setflag ENGINE_SWARM
		swarm ROUTE_38
		writetext SwarmMurkrowText
		waitbutton
		closetext
		end

	.snubbull
		setflag ENGINE_SWARM
		swarm NATIONAL_PARK
		writetext SwarmSnubbullText
		waitbutton
		closetext
		end
	
	.marill
		setflag ENGINE_SWARM
		swarm ROUTE_41
		writetext SwarmMarillText
		waitbutton
		closetext
		end

	.remoraid
		setflag ENGINE_SWARM
		swarm ROUTE_42
		writetext SwarmRemoraidText
		waitbutton
		closetext
		end

	.skiprandomswarm
		writetext SkipSwarmText
		waitbutton
		closetext
		end
	
	SwarmDunsparceText:
		text "Let me see…"
		line "What did the news"
		cont "say?"
	
		para "Oh yes! There's a"
		line "swarm of DUNSPARCE"
		cont "at DARK CAVE."
		done
		
	SwarmYanmaText:
		text "Let me see…"
		line "What did the news"
		cont "say?"
	
		para "Oh yes! There's a"
		line "swarm of YANMA"
		cont "on ROUTE 35."
		done
		
	SwarmQwilfishText:
		text "Let me see…"
		line "What did the news"
		cont "say?"
	
		para "Oh yes! There's a"
		line "swarm of QWILFISH"
		cont "on ROUTE 32."
		done

	SwarmMurkrowText:
		text "Let me see…"
		line "What did the news"
		cont "say?"

		para "Oh yes! There will"
		line "be a swarm of"

		para "MURKROW tonight"
		cont "on ROUTE 38."
		done

	SwarmSnubbullText:
		text "Let me see…"
		line "What did the news"
		cont "say?"

		para "Oh yes! There's a"
		line "swarm of SNUBBULL"
		cont "at NATIONAL PARK."
		done

	SwarmMarillText:
		text "Let me see…"
		line "What did the news"
		cont "say?"

		para "Oh yes! There's a"
		line "swarm of MARILL"
		cont "on ROUTE 42."
		done
	
	SwarmRemoraidText:
		text "Let me see…"
		line "What did the news"
		cont "say?"

		para "Oh yes! There's a"
		line "swarm of REMORAID"
		cont "on ROUTE 41."
		done
		
	SkipSwarmText:
		text "Finding rare"
		line "#MON is so"
	
		para "Exciting! Don't"
		line "you think?"
		done


CherrygroveEvolutionSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CHERRYGROVE_CITY, 5
	warp_event  3,  7, CHERRYGROVE_CITY, 5

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CherrygroveEvolutionSpeechHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, CherrygroveEvolutionSpeechHouseBookshelf

	def_object_events
	object_event  5,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SwarmGrampsScript, -1

