; updates the types of a party mon (pointed to in hl) to the ones of the mon specified in $d11e
SetPartyMonTypes: ; 5db5e (17:5b5e)
	call GetPredefRegisters
	ld bc, W_PARTYMON1_TYPE1 - W_PARTYMON1DATA ; $5
	add hl, bc
	ld a, [$d11e]
	ld [$d0b5], a
	push hl
	call GetMonHeader
	pop hl
	ld a, [W_MONHTYPE1]
	ld [hli], a
	ld a, [W_MONHTYPE2]
	ld [hl], a
	ret