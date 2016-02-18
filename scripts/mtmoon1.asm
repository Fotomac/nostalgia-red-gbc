MtMoon1Script: ; 499c8 (12:59c8)
	call EnableAutoTextBoxDrawing
	ld hl, MtMoon1TrainerHeader0
	ld de, MtMoon1ScriptPointers
	ld a, [wMtMoon1CurScript]
	call ExecuteCurMapScriptInTable
	ld [wMtMoon1CurScript], a
	ret

MtMoon1ScriptPointers: ; 499db (12:59db)
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

MtMoon1TextPointers: ; 499e1 (12:59e1)
	dw MtMoon1Text1
	dw MtMoon1Text2
	dw MtMoon1Text3
	dw MtMoon1Text4
	dw MtMoon1Text5
	dw MtMoon1Text6
	dw MtMoon1Text7
	dw MtMoon1Text8
	dw PickUpItemText
	dw PickUpItemText
	dw PickUpItemText
	dw PickUpItemText
	dw PickUpItemText
	dw PickUpItemText
	dw MtMoon1Text14

MtMoon1TrainerHeaders: ; 499fd (12:59fd)
MtMoon1TrainerHeader0: ; 499fd (12:59fd)
	dbEventFlagBit EVENT_BEAT_MT_MOON_1_TRAINER_0
	db ($2 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_MT_MOON_1_TRAINER_0
	dw MtMoon1BattleText2 ; TextBeforeBattle
	dw MtMoon1AfterBattleText2 ; TextAfterBattle
	dw MtMoon1EndBattleText2 ; TextEndBattle
	dw MtMoon1EndBattleText2 ; TextEndBattle

MtMoon1TrainerHeader2: ; 49a09 (12:5a09)
	dbEventFlagBit EVENT_BEAT_MT_MOON_1_TRAINER_2
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_MT_MOON_1_TRAINER_2
	dw MtMoon1BattleText3 ; TextBeforeBattle
	dw MtMoon1AfterBattleText3 ; TextAfterBattle
	dw MtMoon1EndBattleText3 ; TextEndBattle
	dw MtMoon1EndBattleText3 ; TextEndBattle

MtMoon1TrainerHeader3: ; 49a15 (12:5a15)
	dbEventFlagBit EVENT_BEAT_MT_MOON_1_TRAINER_3
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_MT_MOON_1_TRAINER_3
	dw MtMoon1BattleText4 ; TextBeforeBattle
	dw MtMoon1AfterBattleText4 ; TextAfterBattle
	dw MtMoon1EndBattleText4 ; TextEndBattle
	dw MtMoon1EndBattleText4 ; TextEndBattle

MtMoon1TrainerHeader4: ; 49a21 (12:5a21)
	dbEventFlagBit EVENT_BEAT_MT_MOON_1_TRAINER_4
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_MT_MOON_1_TRAINER_4
	dw MtMoon1BattleText5 ; TextBeforeBattle
	dw MtMoon1AfterBattleText5 ; TextAfterBattle
	dw MtMoon1EndBattleText5 ; TextEndBattle
	dw MtMoon1EndBattleText5 ; TextEndBattle

MtMoon1TrainerHeader5: ; 49a2d (12:5a2d)
	dbEventFlagBit EVENT_BEAT_MT_MOON_1_TRAINER_5
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_MT_MOON_1_TRAINER_5
	dw MtMoon1BattleText6 ; TextBeforeBattle
	dw MtMoon1AfterBattleText6 ; TextAfterBattle
	dw MtMoon1EndBattleText6 ; TextEndBattle
	dw MtMoon1EndBattleText6 ; TextEndBattle

MtMoon1TrainerHeader6: ; 49a39 (12:5a39)
	dbEventFlagBit EVENT_BEAT_MT_MOON_1_TRAINER_6
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_MT_MOON_1_TRAINER_6
	dw MtMoon1BattleText7 ; TextBeforeBattle
	dw MtMoon1AfterBattleText7 ; TextAfterBattle
	dw MtMoon1EndBattleText7 ; TextEndBattle
	dw MtMoon1EndBattleText7 ; TextEndBattle

MtMoon1TrainerHeader7: ; 49a45 (12:5a45)
	dbEventFlagBit EVENT_BEAT_MT_MOON_1_TRAINER_7
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_MT_MOON_1_TRAINER_7
	dw MtMoon1BattleText8 ; TextBeforeBattle
	dw MtMoon1AfterBattleText8 ; TextAfterBattle
	dw MtMoon1EndBattleText8 ; TextEndBattle
	dw MtMoon1EndBattleText8 ; TextEndBattle

MtMoon1TrainerHeader8: ; 49a45 (12:5a45)
	dbEventFlagBit EVENT_BEAT_BROCK_ON_MT__MOON
	dwEventFlagAddress EVENT_BEAT_BROCK_ON_MT__MOON
	dw MtMoon1BattleText9 ; TextBeforeBattle
	dw MtMoon1AfterBattleText9 ; TextAfterBattle
	dw ReceivedFossilText ; TextEarnFossil
	dw FossilNoRoomText ; TextTooManyItems
	dw MtMoon1EndBattleText9 ; TextEndBattle
	dw MtMoon1EndBattleText9 ; TextEndBattle

MtMoonBrock: ; 19359 (6:5359)
	ld a, [wd730]
	bit 1, a
	ret nz
	ld a, HS_BROCK_MT__MOON
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, $6
	ld [wMtMoon1CurScript], a
	ret

MtMoon1BrockBattleText: ; 1967c (6:567c)
	TX_ASM
	CheckEvent EVENT_BEAT_BROCK_ON_MT__MOON
	jr nz, .asm_4ca20
	ld hl, MtMoon1BattleText9
	call PrintText
	ld hl, wd72d
	set 0, [hl]
	set 1, [hl]
	ld hl, MtMoon1EndBattleText9
	ld de, MtMoon1EndBattleText9
	call SaveEndBattleTextPointers
	ld a, [hSpriteIndexOrTextID]
	ld [wSpriteIndex], a
	call EngageMapTrainer
	call InitBattleEnemyParameters
	ld a, $4
	ld [wCeruleanCityCurScript], a
	jp TextScriptEnd
.asm_4ca20
	ld hl, MtMoon1AfterBattleText9
	call PrintText
	CheckEvent EVENT_GOT_DOME_FOSSIL
	jr nz, .domeFossil
	CheckEventReuseA EVENT_GOT_HELIX_FOSSIL
	lb bc, DOME_FOSSIL, 1
	jr .giveFossil
.domeFossil
	lb bc, HELIX_FOSSIL, 1
.giveFossil
	call GiveItem
	jr c, .Success
	ld hl, FossilNoRoomText
	call PrintText
	jr .Done
.Success
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld hl, ReceivedFossilText
	call PrintText
	ld a,[wSpriteStateData1 + 9]
	cp SPRITE_FACING_UP
	ld hl,WalkStraightDown
	jr nz,.Done
	ld hl,WalkAroundPlayer
.Done
	jp TextScriptEnd

WalkStraightDown: ; 19600 (6:5600)
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db $ff

WalkAroundPlayer: ; 19600 (6:5600)
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db $FF

	db $ff

MtMoon1Text1: ; 49a52 (12:5a52)
	TX_ASM
	ld hl, MtMoon1TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

MtMoon1Text2: ; 49a5c (12:5a5c)
	TX_ASM
	ld hl, MtMoon1TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

MtMoon1Text3: ; 49a66 (12:5a66)
	TX_ASM
	ld hl, MtMoon1TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

MtMoon1Text4: ; 49a70 (12:5a70)
	TX_ASM
	ld hl, MtMoon1TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

MtMoon1Text5: ; 49a7a (12:5a7a)
	TX_ASM
	ld hl, MtMoon1TrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

MtMoon1Text6: ; 49a84 (12:5a84)
	TX_ASM
	ld hl, MtMoon1TrainerHeader6
	call TalkToTrainer
	jp TextScriptEnd

MtMoon1Text7: ; 49a8e (12:5a8e)
	TX_ASM
	ld hl, MtMoon1TrainerHeader7
	call TalkToTrainer
	jp TextScriptEnd

MtMoon1Text8: ; 49a8e (12:5a8e)
	TX_ASM
	ld hl, MtMoon1BrockBattleText
	call TalkToTrainer
	jp TextScriptEnd

MtMoon1BattleText2: ; 49a98 (12:5a98)
	TX_FAR _MtMoon1BattleText2
	db "@"

MtMoon1EndBattleText2: ; 49a9d (12:5a9d)
	TX_FAR _MtMoon1EndBattleText2
	db "@"

MtMoon1AfterBattleText2: ; 49aa2 (12:5aa2)
	TX_FAR _MtMoon1AfterBattleText2
	db "@"

MtMoon1BattleText3: ; 49aa7 (12:5aa7)
	TX_FAR _MtMoon1BattleText3
	db "@"

MtMoon1EndBattleText3: ; 49aac (12:5aac)
	TX_FAR _MtMoon1EndBattleText3
	db "@"

MtMoon1AfterBattleText3: ; 49ab1 (12:5ab1)
	TX_FAR _MtMoon1AfterBattleText3
	db "@"

MtMoon1BattleText4: ; 49ab6 (12:5ab6)
	TX_FAR _MtMoon1BattleText4
	db "@"

MtMoon1EndBattleText4: ; 49abb (12:5abb)
	TX_FAR _MtMoon1EndBattleText4
	db "@"

MtMoon1AfterBattleText4: ; 49ac0 (12:5ac0)
	TX_FAR _MtMoon1AfterBattleText4
	db "@"

MtMoon1BattleText5: ; 49ac5 (12:5ac5)
	TX_FAR _MtMoon1BattleText5
	db "@"

MtMoon1EndBattleText5: ; 49aca (12:5aca)
	TX_FAR _MtMoon1EndBattleText5
	db "@"

MtMoon1AfterBattleText5: ; 49acf (12:5acf)
	TX_FAR _MtMoon1AfterBattleText5
	db "@"

MtMoon1BattleText6: ; 49ad4 (12:5ad4)
	TX_FAR _MtMoon1BattleText6
	db "@"

MtMoon1EndBattleText6: ; 49ad9 (12:5ad9)
	TX_FAR _MtMoon1EndBattleText6
	db "@"

MtMoon1AfterBattleText6: ; 49ade (12:5ade)
	TX_FAR _MtMoon1AfterBattleText6
	db "@"

MtMoon1BattleText7: ; 49ae3 (12:5ae3)
	TX_FAR _MtMoon1BattleText7
	db "@"

MtMoon1EndBattleText7: ; 49ae8 (12:5ae8)
	TX_FAR _MtMoon1EndBattleText7
	db "@"

MtMoon1AfterBattleText7: ; 49aed (12:5aed)
	TX_FAR _MtMoon1AfterBattleText7
	db "@"

MtMoon1BattleText8: ; 49af2 (12:5af2)
	TX_FAR _MtMoon1BattleText8
	db "@"

MtMoon1EndBattleText8: ; 49af7 (12:5af7)
	TX_FAR _MtMoon1EndBattleText8
	db "@"

MtMoon1AfterBattleText8: ; 49afc (12:5afc)
	TX_FAR _MtMoon1AfterBattleText8
	db "@"

MtMoon1BattleText9: ; 49af2 (12:5af2)
	TX_FAR _MtMoon1BattleText9
	db "@"

MtMoon1EndBattleText9: ; 49af7 (12:5af7)
	TX_FAR _MtMoon1EndBattleText9
	db "@"

MtMoon1AfterBattleText9: ; 49afc (12:5afc)
	TX_FAR _MtMoon1AfterBattleText9
	db "@"

ReceivedFossilText: ; 196de (6:56de)
	TX_FAR _ReceivedFossilText
	db $0B
	TX_FAR _ReceivedFossilText2
	db $0D, "@"

FossilNoRoomText: ; 196e9 (6:56e9)
	TX_FAR _FossilNoRoomText
	db "@"

MtMoon1Text14: ; 49b01 (12:5b01)
	TX_FAR _MtMoon1Text14
	db "@"
