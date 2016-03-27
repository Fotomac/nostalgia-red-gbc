UndergroundPathEntranceRoute7Script: ; 5d72c (17:572c)
	ld a, ROUTE_7
	ld [wLastMap], a
	jp EnableAutoTextBoxDrawing

UndergroundPathEntranceRoute7TextPointers: ; 5d734 (17:5734)
	dw UndergroundPathEntranceRoute7Text1
	dw UndergroundPathEntranceRoute7Text2

UndergroundPathEntranceRoute7Text1: ; 5d736 (17:5736)
	TX_FAR _UndergroundPathEntRoute7Text1
	db "@"

UndergroundPathEntranceRoute7Text2: ; 5d6b2 (17:56b2)
	TX_ASM
	ld a, $2
	ld [wWhichTrade], a
	predef DoInGameTradeDialogue
	jp TextScriptEnd
