CeruleanPokecenterScript: ; 5c645 (17:4645)
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing

CeruleanPokecenterTextPointers: ; 5c64b (17:464b)
	dw CeruleanPokecenterText1
	dw CeruleanPokecenterText2
	dw CeruleanPokecenterText3
	dw CeruleanPokecenterText4
	dw CeruleanPokecenterText5

CeruleanPokecenterText4: ; 5c653 (17:4653)
	db $f6

CeruleanPokecenterText1: ; 5c654 (17:4654)
	db $ff

CeruleanPokecenterText2: ; 5c655 (17:4655)
	TX_FAR _CeruleanPokecenterText1
	db "@"

CeruleanPokecenterText3: ; 5c65a (17:465a)
	TX_FAR _CeruleanPokecenterText3
	db "@"

CeruleanPokecenterText5:
	TX_ASM
	ld a, [wExtraFlags]
	bit 0, a ; got unchosen Starter?
	ld hl, .MeetOakAideText
	call PrintText
	ld a, [wPlayerStarter]
	cp CHARMANDER
	jr z, .charmander
	cp SQUIRTLE
	jr z, .squirtle
	lb bc, SQUIRTLE, 5
	jr z, .showText
.charmander
	lb bc, BULBASAUR, 5
	jr z, .showText
.squirtle
	lb bc, CHARMANDER, 5
.showText
	call GivePokemon
	jr nc, .comeBackLater
	ld hl, .OakAideFarewellText
	call PrintText
	ld hl, wExtraFlags
	call SetSpriteMovementBytesToFF
	ld a, [wXCoord]
	cp $14
	jr nz, .moveLeft
	ld de, CeruleanPokecenterMovement2
	jr .next
.moveLeft
	ld de, CeruleanPokecenterMovement1
.next
	ld a, $1
	ld [H_SPRITEINDEX], a
	call MoveSprite
	ld a, $3
	ld [wCeruleanPokecenterCurScript], a
	ret
.comeBackLater
	ld hl, TooManyPokemon
	call PrintText
	jp TextScriptEnd

.MeetOakAideText
	TX_FAR _MeetOakAideText
	db "@"

.OakAideFarewellText
	TX_FAR _OakAideFarewellText
	db "@"

TooManyPokemon
	TX_FAR _TooManyPokemon
	db "@"

CeruleanPokecenterMovement1: ; 19600 (6:5600)
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db $FF

CeruleanPokecenterMovement2: ; 19608 (6:5608)
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_DOWN
	db $FF