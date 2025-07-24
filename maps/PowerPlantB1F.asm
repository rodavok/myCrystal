	object_const_def
   	const POWERPLANT_ZAPDOS
    const POWERPLANT_ELECTRODE1
    const POWERPLANT_ELECTRODE2
    const POWERPLANT_ELECTRODE3
    const POWERPLANT_ELECTRODE4
    const POWERPLANT_ELECTRODE5
    const POWERPLANT_ELECTRODE6
    const POWERPLANT_ELECTRODE7
    const POWERPLANT_ELECTRODE8
    const POWERPLANT_POKEBALL1
    const POWERPLANT_POKEBALL2
    const POWERPLANT_POKEBALL3
    const POWERPLANT_POKEBALL4
    const POWERPLANT_POKEBALL5

PowerplantB1F_MapScripts:
	def_scene_scripts
	scene_script PowerplantB1FNoopScene ; unusable

	def_callbacks
    callback MAPCALLBACK_OBJECTS, PowerplantB1FZapdosCallback

PowerplantB1FNoopScene:
	end

PowerplantB1FZapdosCallback:
	checkevent EVENT_FOUGHT_ZAPDOS
	iftrue .NoAppear
	checkitem SILVER_WING
	iftrue .Appear
	sjump .NoAppear

.Appear:
	appear POWERPLANT_ZAPDOS
	endcallback

.NoAppear:
	disappear POWERPLANT_ZAPDOS
	endcallback

Zapdos:
	faceplayer
	opentext
	writetext ZapdosText
	cry ZAPDOS
	pause 15
	closetext
	setevent EVENT_FOUGHT_ZAPDOS
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon ZAPDOS, 45
	startbattle
	disappear POWERPLANT_ZAPDOS
	reloadmapafterbattle
	end

PowerPlantElectrode1:
    opentext
    writetext PowerPlantElectrodeText
	cry ELECTRODE
    pause 15
    closetext
    setevent EVENT_POWERPLANTB1F_ELECTRODE1
	loadwildmon ELECTRODE, 45
	startbattle
	disappear POWERPLANT_ELECTRODE1
	reloadmapafterbattle
	end

PowerPlantElectrode2:
    opentext
    writetext PowerPlantElectrodeText
	cry ELECTRODE
    pause 15
    closetext
    setevent EVENT_POWERPLANTB1F_ELECTRODE2
	loadwildmon ELECTRODE, 45
	startbattle
	disappear POWERPLANT_ELECTRODE2
	reloadmapafterbattle
	end

PowerPlantElectrode3:
    opentext
    writetext PowerPlantElectrodeText
	cry ELECTRODE
    pause 15
    closetext
    setevent EVENT_POWERPLANTB1F_ELECTRODE3
	loadwildmon ELECTRODE, 45
	startbattle
	disappear POWERPLANT_ELECTRODE3
	reloadmapafterbattle
	end

PowerPlantElectrode4:
    opentext
    writetext PowerPlantElectrodeText
	cry ELECTRODE
    pause 15
    closetext
    setevent EVENT_POWERPLANTB1F_ELECTRODE4
	loadwildmon ELECTRODE, 45
	startbattle
	disappear POWERPLANT_ELECTRODE1
	reloadmapafterbattle
	end

PowerPlantElectrode5:
    opentext
    writetext PowerPlantElectrodeText
	cry ELECTRODE
    pause 15
    closetext
    setevent EVENT_POWERPLANTB1F_ELECTRODE5
	loadwildmon ELECTRODE, 45
	startbattle
	disappear POWERPLANT_ELECTRODE5
	reloadmapafterbattle
	end

PowerPlantElectrode6:
    opentext
    writetext PowerPlantElectrodeText
	cry ELECTRODE
    pause 15
    closetext
    setevent EVENT_POWERPLANTB1F_ELECTRODE6
	loadwildmon ELECTRODE, 45
	startbattle
	disappear POWERPLANT_ELECTRODE6
	reloadmapafterbattle
	end

PowerPlantElectrode7:
    opentext
    writetext PowerPlantElectrodeText
	cry ELECTRODE
    pause 15
    closetext
    setevent EVENT_POWERPLANTB1F_ELECTRODE7
	loadwildmon ELECTRODE, 45
	startbattle
	disappear POWERPLANT_ELECTRODE7
	reloadmapafterbattle
	end


PowerPlantElectrode8:
    opentext
    writetext PowerPlantElectrodeText
	cry ELECTRODE
    pause 15
    closetext
    setevent EVENT_POWERPLANTB1F_ELECTRODE8
	loadwildmon ELECTRODE, 45
	startbattle
	disappear POWERPLANT_ELECTRODE8
	reloadmapafterbattle
	end

ZapdosText:
	text "Gyaoo!"
	done

PowerPlantElectrodeText:
    text "The ITEM was"
    line "actually a wild"
    cont "#MON!"
    done

PowerPlantCarbos:
    itemball CARBOS 

PowerPlantRareCandy:
    itemball RARE_CANDY

PowerPlantHPUP:
    itemball HP_UP

PowerPlantTMThunder:
    itemball TM_THUNDER

PowerPlantRareCandy2:
    itemball RARE_CANDY

PowerplantB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 16, POWER_PLANT, 3


	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  9, SPRITE_MOLTRES, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Zapdos, EVENT_POWERPLANT_ZAPDOS
    object_event 32, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PowerPlantElectrode1, EVENT_POWERPLANTB1F_ELECTRODE1
    object_event 21, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PowerPlantElectrode2, EVENT_POWERPLANTB1F_ELECTRODE2
    object_event 25, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PowerPlantElectrode3, EVENT_POWERPLANTB1F_ELECTRODE3
    object_event 23, 34, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PowerPlantElectrode4, EVENT_POWERPLANTB1F_ELECTRODE4
    object_event 26, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PowerPlantElectrode5, EVENT_POWERPLANTB1F_ELECTRODE5
    object_event 21, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PowerPlantElectrode6, EVENT_POWERPLANTB1F_ELECTRODE6
    object_event 37, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PowerPlantElectrode7, EVENT_POWERPLANTB1F_ELECTRODE7
    object_event  7, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantCarbos, EVENT_POWERPLANTB1F_CARBOS
    object_event 28,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantRareCandy, EVENT_POWERPLANTB1F_RARE_CANDY
    object_event 34,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantHPUP, EVENT_POWERPLANTB1F_HP_UP
    object_event 26, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantTMThunder, EVENT_POWERPLANTB1F_TM_THUNDER
    object_event 20, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantRareCandy2, EVENT_POWERPLANTB1F_RARE_CANDY2


