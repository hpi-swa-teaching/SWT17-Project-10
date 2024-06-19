event handling
mouseDown: anEvent

	(anEvent yellowButtonPressed and: owner hasMultipleData)
		ifTrue: [owner removeFromData: self.].
	anEvent hand waitForClicksOrDrag: self event: anEvent.
