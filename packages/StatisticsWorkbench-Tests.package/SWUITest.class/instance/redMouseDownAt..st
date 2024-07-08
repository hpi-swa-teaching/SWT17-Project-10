accessing
redMouseDownAt: point

	^ MouseButtonEvent new
		setType: #mouseDown
		position: point
		which: 2r000 "no change"
		buttons: 2r100 "yellow pressed"
		hand: self hand
		stamp: Time millisecondClockValue