event handling
mouseDown: anEvent

	(anEvent yellowButtonPressed and: owner hasMultipleData)
		ifTrue: [owner removeFromData: self.].
	(anEvent redButtonPressed)
		ifTrue: [self switchColor].
	anEvent hand waitForClicksOrDrag: self event: anEvent.
