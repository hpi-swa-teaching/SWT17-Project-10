adding
includeZero

	(self first > 0)
		ifTrue: [self setFrom: 0 to: (self last) by: 1].
	(self first < 0 and: (self last < 0))
		ifTrue: [self setFrom: (self first) to: 0 by: 1]
