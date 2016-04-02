CeladonGymScript: ; 4890a (12:490a)
	ld hl, wCurrentMapScriptFlags
	bit 6, [hl]
	res 6, [hl]
	call nz, CeladonGymScript_48927
	call EnableAutoTextBoxDrawing
	ld hl, CeladonGymTrainerHeaders
	ld de, CeladonGymScriptPointers
	ld a, [wCeladonGymCurScript]
	call ExecuteCurMapScriptInTable
	ld [wCeladonGymCurScript], a
	ret

CeladonGymScript_48927: ; 48927 (12:4927)
	ld hl, Gym4CityName
	ld de, Gym4LeaderName
	jp LoadGymLeaderAndCityName

Gym4CityName: ; 48930 (12:4930)
	db "CELADON CITY@"

Gym4LeaderName: ; 4893d (12:493d)
	db "ERIKA@"

CeladonGymText_48943: ; 48943 (12:4943)
	xor a
	ld [wJoyIgnore], a
	ld [wCeladonGymCurScript], a
	ld [wCurMapScript], a
	ret

CeladonGymScriptPointers: ; 4894e (12:494e)
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle
	dw CeladonGymScript3

CeladonGymScript3: ; 48956 (12:4956)
	ld a, [wIsInBattle]
	cp $ff
	jp z, CeladonGymText_48943
	ld a, $f0
	ld [wJoyIgnore], a

CeladonGymText_48963: ; 48963 (12:4963)
	ld a, $9
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	SetEvent EVENT_BEAT_ERIKA
	lb bc, TM_21, 1
	call GiveItem
	jr nc, .BagFull
	ld a, $a
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	SetEvent EVENT_GOT_TM21
	jr .asm_4898c
.BagFull
	ld a, $b
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
.asm_4898c
	ld hl, wObtainedBadges
	set 3, [hl]
	ld hl, wBeatGymFlags
	set 3, [hl]

	; deactivate gym trainers
	SetEventRange EVENT_BEAT_CELADON_GYM_TRAINER_0, EVENT_BEAT_CELADON_GYM_TRAINER_7

	jp CeladonGymText_48943

CeladonGymTextPointers: ; 489a6 (12:49a6)
	dw CeladonGymText1
	dw CeladonGymText2
	dw CeladonGymText3
	dw CeladonGymText4
	dw CeladonGymText5
	dw CeladonGymText6
	dw CeladonGymText7
	dw CeladonGymText8
	dw CeladonGymText9
	dw TM21Text
	dw TM21NoRoomText

CeladonGymTrainerHeaders: ; 489bc (12:49bc)
CeladonGymTrainerHeader0: ; 489bc (12:49bc)
	dbEventFlagBit EVENT_BEAT_CELADON_GYM_TRAINER_0
	db ($2 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_CELADON_GYM_TRAINER_0
	dw CeladonGymBattleText2 ; TextBeforeBattle
	dw CeladonGymAfterBattleText2 ; TextAfterBattle
	dw CeladonGymEndBattleText2 ; TextEndBattle
	dw CeladonGymEndBattleText2 ; TextEndBattle

CeladonGymTrainerHeader2: ; 489c8 (12:49c8)
	dbEventFlagBit EVENT_BEAT_CELADON_GYM_TRAINER_2
	db ($2 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_CELADON_GYM_TRAINER_2
	dw CeladonGymBattleText3 ; TextBeforeBattle
	dw CeladonGymAfterBattleText3 ; TextAfterBattle
	dw CeladonGymEndBattleText3 ; TextEndBattle
	dw CeladonGymEndBattleText3 ; TextEndBattle

CeladonGymTrainerHeader3: ; 489d4 (12:49d4)
	dbEventFlagBit EVENT_BEAT_CELADON_GYM_TRAINER_3
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_CELADON_GYM_TRAINER_3
	dw CeladonGymBattleText4 ; TextBeforeBattle
	dw CeladonGymAfterBattleText4 ; TextAfterBattle
	dw CeladonGymEndBattleText4 ; TextEndBattle
	dw CeladonGymEndBattleText4 ; TextEndBattle

CeladonGymTrainerHeader4: ; 489e0 (12:49e0)
	dbEventFlagBit EVENT_BEAT_CELADON_GYM_TRAINER_4
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_CELADON_GYM_TRAINER_4
	dw CeladonGymBattleText5 ; TextBeforeBattle
	dw CeladonGymAfterBattleText5 ; TextAfterBattle
	dw CeladonGymEndBattleText5 ; TextEndBattle
	dw CeladonGymEndBattleText5 ; TextEndBattle

CeladonGymTrainerHeader5: ; 489ec (12:49ec)
	dbEventFlagBit EVENT_BEAT_CELADON_GYM_TRAINER_5
	db ($2 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_CELADON_GYM_TRAINER_5
	dw CeladonGymBattleText6 ; TextBeforeBattle
	dw CeladonGymAfterBattleText6 ; TextAfterBattle
	dw CeladonGymEndBattleText6 ; TextEndBattle
	dw CeladonGymEndBattleText6 ; TextEndBattle

CeladonGymTrainerHeader6: ; 489f8 (12:49f8)
	dbEventFlagBit EVENT_BEAT_CELADON_GYM_TRAINER_6
	db ($2 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_CELADON_GYM_TRAINER_6
	dw CeladonGymBattleText7 ; TextBeforeBattle
	dw CeladonGymAfterBattleText7 ; TextAfterBattle
	dw CeladonGymEndBattleText7 ; TextEndBattle
	dw CeladonGymEndBattleText7 ; TextEndBattle

CeladonGymTrainerHeader7: ; 48a04 (12:4a04)
	dbEventFlagBit EVENT_BEAT_CELADON_GYM_TRAINER_7, 1
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_CELADON_GYM_TRAINER_7, 1
	dw CeladonGymBattleText8 ; TextBeforeBattle
	dw CeladonGymAfterBattleText8 ; TextAfterBattle
	dw CeladonGymEndBattleText8 ; TextEndBattle
	dw CeladonGymEndBattleText8 ; TextEndBattle

	db $ff

CeladonGymText1: ; 48a11 (12:4a11)
	TX_ASM
	CheckEvent EVENT_BEAT_ERIKA
	jr z, .asm_48a2d
	CheckEventReuseA EVENT_GOT_TM21
	jr nz, .asm_48a25
	call z, CeladonGymText_48963
	call DisableWaitingAfterTextDisplay
	jr .asm_48a5b
.asm_48a25
	ld hl, CeladonGymText_48a68
	call PrintText
	jr .asm_48a5b
.asm_48a2d
	ld hl, CeladonGymText_48a5e
	call PrintText
	ld hl, wd72d
	set 6, [hl]
	set 7, [hl]
	ld hl, CeladonGymText_48a63
	ld de, CeladonGymText_48a63
	call SaveEndBattleTextPointers
	ld a, [H_SPRITEINDEX]
	ld [wSpriteIndex], a
	call EngageMapTrainer
	call InitBattleEnemyParameters
	ld a, $4
	ld [wGymLeaderNo], a
	ld a, $3
	ld [wCeladonGymCurScript], a
	ld [wCurMapScript], a
.asm_48a5b
	jp TextScriptEnd

CeladonGymText_48a5e: ; 48a5e (12:4a5e)
	TX_FAR _CeladonGymText_48a5e
	db "@"

CeladonGymText_48a63: ; 48a63 (12:4a63)
	TX_FAR _CeladonGymText_48a63
	db "@"

CeladonGymText_48a68: ; 48a68 (12:4a68)
	TX_FAR _CeladonGymText_48a68
	db "@"

CeladonGymText9: ; 48a6d (12:4a6d)
	TX_FAR _CeladonGymText9
	db "@"

TM21Text: ; 48a72 (12:4a72)
	TX_FAR _ReceivedTM21Text
	db $0B
	TX_FAR _TM21ExplanationText
	db "@"

TM21NoRoomText: ; 48a7c (12:4a7c)
	TX_FAR _TM21NoRoomText
	db "@"

CeladonGymText2: ; 48a81 (12:4a81)
	TX_ASM
	ld hl, CeladonGymTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

CeladonGymBattleText2: ; 48a8b (12:4a8b)
	TX_FAR _CeladonGymBattleText2
	db "@"

CeladonGymEndBattleText2: ; 48a90 (12:4a90)
	TX_FAR _CeladonGymEndBattleText2
	db "@"

CeladonGymAfterBattleText2: ; 48a95 (12:4a95)
	TX_FAR _CeladonGymAfterBattleText2
	db "@"

CeladonGymText3: ; 48a9a (12:4a9a)
	TX_ASM
	ld hl, CeladonGymTrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

CeladonGymBattleText3: ; 48aa4 (12:4aa4)
	TX_FAR _CeladonGymBattleText3
	db "@"

CeladonGymEndBattleText3: ; 48aa9 (12:4aa9)
	TX_FAR _CeladonGymEndBattleText3
	db "@"

CeladonGymAfterBattleText3: ; 48aae (12:4aae)
	TX_FAR _CeladonGymAfterBattleText3
	db "@"

CeladonGymText4: ; 48ab3 (12:4ab3)
	TX_ASM
	ld hl, CeladonGymTrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

CeladonGymBattleText4: ; 48abd (12:4abd)
	TX_FAR _CeladonGymBattleText4
	db "@"

CeladonGymEndBattleText4: ; 48ac2 (12:4ac2)
	TX_FAR _CeladonGymEndBattleText4
	db "@"

CeladonGymAfterBattleText4: ; 48ac7 (12:4ac7)
	TX_FAR _CeladonGymAfterBattleText4
	db "@"

CeladonGymText5: ; 48acc (12:4acc)
	TX_ASM
	ld hl, CeladonGymTrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

CeladonGymBattleText5: ; 48ad6 (12:4ad6)
	TX_FAR _CeladonGymBattleText5
	db "@"

CeladonGymEndBattleText5: ; 48adb (12:4adb)
	TX_FAR _CeladonGymEndBattleText5
	db "@"

CeladonGymAfterBattleText5: ; 48ae0 (12:4ae0)
	TX_FAR _CeladonGymAfterBattleText5
	db "@"

CeladonGymText6: ; 48ae5 (12:4ae5)
	TX_ASM
	ld hl, CeladonGymTrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

CeladonGymBattleText6: ; 48aef (12:4aef)
	TX_FAR _CeladonGymBattleText6
	db "@"

CeladonGymEndBattleText6: ; 48af4 (12:4af4)
	TX_FAR _CeladonGymEndBattleText6
	db "@"

CeladonGymAfterBattleText6: ; 48af9 (12:4af9)
	TX_FAR _CeladonGymAfterBattleText6
	db "@"

CeladonGymText7: ; 48afe (12:4afe)
	TX_ASM
	ld hl, CeladonGymTrainerHeader6
	call TalkToTrainer
	jp TextScriptEnd

CeladonGymBattleText7: ; 48b08 (12:4b08)
	TX_FAR _CeladonGymBattleText7
	db "@"

CeladonGymEndBattleText7: ; 48b0d (12:4b0d)
	TX_FAR _CeladonGymEndBattleText7
	db "@"

CeladonGymAfterBattleText7: ; 48b12 (12:4b12)
	TX_FAR _CeladonGymAfterBattleText7
	db "@"

CeladonGymText8: ; 48b17 (12:4b17)
	TX_ASM
	ld hl, CeladonGymTrainerHeader7
	call TalkToTrainer
	jp TextScriptEnd

CeladonGymBattleText8: ; 48b21 (12:4b21)
	TX_FAR _CeladonGymBattleText8
	db "@"

CeladonGymEndBattleText8: ; 48b26 (12:4b26)
	TX_FAR _CeladonGymEndBattleText8
	db "@"

CeladonGymAfterBattleText8: ; 48b2b (12:4b2b)
	TX_FAR _CeladonGymAfterBattleText8
	db "@"
