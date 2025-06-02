BattleCommand_PayDay:
	xor a
	ld hl, wStringBuffer1
	ld [hli], a

	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonLevel]
	jr z, .ok
	ld a, [wEnemyMonLevel]
.ok

	add a      ; A = A * 2
	ld b, a    ; Save A * 2 in B
	add a      ; A = A * 4 (total)
	add a      ; A = A * 8 (total)  
	add b      ; A = A * 8 + A * 2 = A * 10
	ld hl, wPayDayMoney + 2
	add [hl]
	ld [hld], a
	jr nc, .done
	inc [hl]
	dec hl
	jr nz, .done
	inc [hl]
.done
	ld hl, CoinsScatteredText
	jp StdBattleTextbox
