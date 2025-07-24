HappinessChanges:
; entries correspond to HAPPINESS_* constants
	table_width 3, HappinessChanges
	; change if happiness < 100, change if happiness < 200, change otherwise
	db +10,  +7,  +5 ; Gained a level
	db +15, +10,  +7 ; Vitamin
	db  +7,  +7,  +5 ; X Item
	db +15, +12, +10 ; Battled a Gym Leader
	db  +5,  +5,  +5 ; Learned a move
	db  -5,  -5, -10 ; Lost to an enemy
	db  -5,  -5, -10 ; Fainted due to poison
	db -10, -10, -15 ; Lost to a much stronger enemy
	db +20, +15, +10 ; Haircut (older brother) 1
	db +20, +15, +10 ; Haircut (older brother) 2
	db +20, +15, +10 ; Haircut (older brother) 3
	db +15, +15, +15 ; Haircut (younger brother) 1
	db +15, +15, +15 ; Haircut (younger brother) 2
	db +10,  +5,  +0 ; Haircut (younger brother) 3
	db  -5,  -5, -10 ; Used Heal Powder or Energypowder (bitter)
	db -15, -15, -20 ; Used Energy Root (bitter)
	db -15, -15, -20 ; Used Revival Herb (bitter)
	db +15, +12, +10 ; Grooming
	db +15, +15, +15 ; Gained a level in the place where it was caught
	assert_table_length NUM_HAPPINESS_CHANGES
