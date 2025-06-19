BattleCommand_StartSun:
; 	ld de, wBattleMonType1
; 	ld bc, wPlayerStatLevels
; 	ldh a, [hBattleTurn]
; 	and a
; 	jr z, .go
; 	ld de, wEnemyMonType1
; 	ld bc, wEnemyStatLevels

;  .go

; Sunny Day is different for Grass-types.

	; ld a, [de]
	; cp GRASS
	; jr z, .grass
	; inc de
	; ld a, [de]
	; cp GRASS
	; jr z, .grass 

	ld a, WEATHER_SUN
	ld [wBattleWeather], a
	ld a, 5
	ld [wWeatherCount], a
	call AnimateCurrentMove
	ld hl, SunGotBrightText
	jp StdBattleTextbox

; .grass
; 	ld b, SPEED
; 	jp BattleCommand_StatUp

; 	ld a, WEATHER_SUN
; 	ld [wBattleWeather], a
; 	ld a, 5
; 	ld [wWeatherCount], a
; 	call AnimateCurrentMove
; 	ld hl, SunGotBrightText
; 	jp StdBattleTextbox