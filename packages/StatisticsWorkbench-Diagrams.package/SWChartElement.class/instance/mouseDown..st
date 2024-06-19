event handling
mouseDown: anEvent

	"(anEvent yellowButtonPressed and: owner hasMultipleData)
		ifTrue: [owner removeFromData: self]."
		
	(anEvent yellowButtonPressed)
		ifTrue: [self color: Color red].
	anEvent hand waitForClicksOrDrag: self event: anEvent
