event handling
mouseDown: anEvent

	(anEvent yellowButtonPressed)
		ifTrue: [^ self removeFrom: self diagram].
	anEvent hand waitForClicksOrDrag: self event: anEvent.
	self update
