PrizeDifferentMenuPtrs: ; 52843 (14:6843)
	dw PrizeMenuMon1Entries
	dw PrizeMenuMon1Cost

	dw PrizeMenuMon2Entries
	dw PrizeMenuMon2Cost

	dw PrizeMenuTMsEntries
	dw PrizeMenuTMsCost

NoThanksText: ; 5284f (14:684f)
	db "NO THANKS@"

PrizeMenuMon1Entries: ; 52859 (14:6859)
	db ABRA
IF DEF(_RED)
	db CLEFAIRY
	db NIDORINA
ENDC
IF DEF(_GREEN)
	db CLEFAIRY
	db NIDORINO
ENDC
IF DEF(_BLUE)
	db PIKACHU
	db HORSEA
ENDC
	db "@"

PrizeMenuMon1Cost: ; 5285d (14:685d)
IF DEF(_RED)
	coins 180
	coins 500
	coins 1200
ENDC
IF DEF(_GREEN)
	coins 120
	coins 750
	coins 1200
ENDC
IF DEF(_BLUE)
	coins 150
	coins 620
	coins 1000
ENDC
	db "@"

PrizeMenuMon2Entries: ; 52864 (14:6864)
IF DEF(_RED)
	db DRATINI
	db SCYTHER
ENDC
IF DEF(_GREEN)
	db PINSIR
	db DRATINI
ENDC
IF DEF(_BLUE)
	db CLEFABLE
	db DRAGONAIR
ENDC
	db PORYGON
	db "@"

PrizeMenuMon2Cost: ; 52868 (14:6868)
IF DEF(_RED)
	coins 2800
	coins 5500
	coins 9999
ENDC
IF DEF(_GREEN)
	coins 2500
	coins 4600
	coins 6500
ENDC
IF DEF(_BLUE)
	coins 2880
	coins 5400
	coins 8300
ENDC
	db "@"

PrizeMenuTMsEntries: ; 5286f (14:686f)
	db TM_23
	db TM_15
	db TM_50
	db "@"

PrizeMenuTMsCost: ; 52873 (14:6873)
	coins 3300
	coins 5500
	coins 7700
	db "@"
