adding/removing
add: aBar

	self bars add: aBar.
	aBar datapointIndex: (self bars size).
	self addMorph: aBar
