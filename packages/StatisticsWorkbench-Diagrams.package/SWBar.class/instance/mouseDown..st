accessing
mouseDown: anEvent

	(anEvent yellowButtonPressed and: ((owner data select: [:aVector | aVector y > 0]) size >= 2))
		ifTrue: [
			owner data at: self datapointIndex put: (SWVector fromPoint: ((owner data at: self datapointIndex) x) @ 0).
			owner originalData at: self datapointIndex put: (SWVector fromPoint: ((owner originalData at: self datapointIndex) x) @ 0).
			owner diagram redrawChangedData.].
	(anEvent redButtonPressed)
		ifTrue: [self switchColor].
	anEvent hand waitForClicksOrDrag: self event: anEvent
