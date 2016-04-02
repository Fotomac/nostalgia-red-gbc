_MtMoon1BattleText2:: ; 80692 (20:4692)
	text "WHOA! You shocked"
	line "me! Oh, you're"
	cont "just a kid!"
	done

_MtMoon1EndBattleText2:: ; 806bf (20:46bf)
	text "Wow!"
	line "Shocked again!"
	prompt

_MtMoon1AfterBattleText2:: ; 806d4 (20:46d4)
	text "Kids like you"
	line "shouldn't be"
	cont "in dark places"
	cont "like this!"
	done

_MtMoon1BattleText3:: ; 806f5 (20:46f5)
	text "Did you come to"
	line "explore too?"
	done

_MtMoon1EndBattleText3:: ; 80713 (20:4713)
	text "Losing"
	line "stinks!"
	prompt

_MtMoon1AfterBattleText3:: ; 80723 (20:4723)
	text "I came down here"
	line "to show off to"
	cont "girls, but then"
	cont "TEAM ROCKET"
	cont "scared them away."
	done

_MtMoon1BattleText4:: ; 8074b (20:474b)
	text "Wow! It's way"
	line "bigger in here"
	cont "than I thought!"
	done

_MtMoon1EndBattleText4:: ; 80778 (20:4778)
	text "Oh!"
	line "I lost it!"
	prompt

_MtMoon1AfterBattleText4:: ; 80788 (20:4788)
	text "How do you get"
	line "out of here?"
	done

_MtMoon1BattleText5:: ; 807a5 (20:47a5)
	text "WHOA!"
	line "What? Don't call"
	cont "out so suddenly!"
	done

_MtMoon1EndBattleText5:: ; 807c1 (20:47c1)
	text "These"
	line "#MON won't do."
	prompt

_MtMoon1AfterBattleText5:: ; 807d3 (20:47d3)
	text "Where can you find"
	line "stronger #MON?"
	done

_MtMoon1BattleText6:: ; 807f2 (20:47f2)
	text "What? I'm waiting"
	line "for my friends,"
	cont "who got lost in"
	cont "this cave."
	done

_MtMoon1EndBattleText6:: ; 80824 (20:4824)
	text "I lost?"
	prompt

_MtMoon1AfterBattleText6:: ; 8082d (20:482d)
	text "I heard there are"
	line "some amazing"
	cont "fossils here."
	done

_MtMoon1BattleText7:: ; 8085d (20:485d)
	text "Suspicious men"
	line "are in the cave."
	cont "What about you?"
	done

_MtMoon1EndBattleText7:: ; 8088e (20:488e)
	text "You"
	line "got me!"
	prompt

_MtMoon1AfterBattleText7:: ; 8089b (20:489b)
	text "I saw them! I'm"
	line "sure they're from"
	cont "TEAM ROCKET!"
	done

_MtMoon1BattleText8:: ; 808c9 (20:48c9)
	text "Go through this"
	line "cave to get to"
	cont "CERULEAN CITY!"
	done

_MtMoon1EndBattleText8:: ; 808f8 (20:48f8)
	text "I"
	line "lost."
	prompt

_MtMoon1AfterBattleText8:: ; 80901 (20:4901)
	text "ZUBAT is tough!"
	line "But, you can rely"
	cont "on it if you"
	cont "catch one."
	done

_MtMoon1BattleText9::
	text "Long time, no see!"
	line "I was just in the"
	cont "neighborhood,"
	cont "digging for"
	cont "fossils."

	para "It's a hobby of"
	line "mine! My little"
	cont "brother FORREST"
	cont "runs the GYM"
	cont "whenever I'm out"
	cont "in these parts."

	para "By the way, I just"
	line "found this fossil."
	cont "Wanna battle for"
	cont "it?"
	done

_MtMoon1EndBattleText9::
	text "You've certainly"
	line "been improving"
	cont "since we last met."
	prompt

_MtMoon1AfterBattleText9::
	text "So, as proof of"
	line "your latest"
	cont "victory, here's"
	cont "this fossil."
	prompt

_ReceivedFossilText::
	text $52, " got the"
	line "@"
	TX_RAM wcf4b
	text "!@@"

_ReceivedFossilText2::
	text "It's been an honor"
	line "to battle you once"
	cont "more. I hope we"
	cont "can do it again"
	cont "later on!"

	para "For now, though, I"
	line "will continue to"
	cont "dig for fossils."

	para "Oh, when you get"
	line "to VERMILION GYM,"
	cont "tell LT.SURGE"
	cont "I said hi!"
	done

_FossilNoRoomText::
	text "You don't have"
	line "room for this!"
	done

_MtMoon1Text14::
	text "Beware! ZUBAT is"
	line "a blood sucker!"
	done
