event handling
mouseLeave: anEvent

	(self infoPopup) ifNotNil: [self infoPopup delete. self infoPopup: nil]