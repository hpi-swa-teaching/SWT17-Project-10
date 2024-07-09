testing
areMarkersDrawable

	(self areMarkersInsideAxisBoundaries)
		ifTrue: [^ self maximum > self minimum and: [self stepInterval positive]]
	 	ifFalse: [^ false]