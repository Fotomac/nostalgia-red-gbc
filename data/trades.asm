TradeMons: ; 71b7b (1c:5b7b)
; givemonster, getmonster, textstring, nickname (11 bytes), 14 bytes total
IF DEF(_YELLOW)
	db LICKITUNG, DUGTRIO,   0,"GURIO@@@@@@"
	db CLEFAIRY,  MR_MIME,   0,"MILES@@@@@@"
	db BUTTERFREE,BEEDRILL,  2,"STINGER@@@@"
	db KANGASKHAN,MUK,       0,"STICKY@@@@@"
	db MEW,       MEW,       2,"BART@@@@@@@"
	db TANGELA,   PARASECT,  0,"SPIKE@@@@@@"
	db PIDGEOT,   PIDGEOT,   1,"MARTY@@@@@@"
	db GOLDUCK,   RHYDON,    1,"BUFFY@@@@@@"
	db GROWLITHE, DEWGONG,   2,"CEZANNE@@@@"
	db CUBONE,    MACHOKE,   2,"RICKY@@@@@@"
ELSE
	db RHYDON,    KANGASKHAN,0,"RODAN@@@@@@"
	db JIGGLYPUFF,MR_MIME,   0,"MARCEL@@@@@"
	db HAUNTER,   KADABRA,   1,"ESPER@@@@@@"
	db GROWLITHE, KRABBY,    0,"DRAKE@@@@@@"
	db PIDGEY,    FARFETCH_D,2,"DUX@@@@@@@@"
	db PERSIAN,   TAUROS,    0,"GUTS@@@@@@@"
	db MACHOKE,   HAUNTER,   1,"SPECTRE@@@@"
	db KADABRA,   GRAVELER,  1,"ROCKY@@@@@@"
	db SEEL,      SLOWPOKE,  2,"OSCAR@@@@@@"
	db RATTATA,   POLIWAG,   2,"SPOT@@@@@@@"
ENDC
