adjusting
adjustVerticalStepInterval

	| newStepInterval  |
	
	newStepInterval := self stepInterval.
	(self markerDistance < self class defaultMinMarkerDistance)
		ifTrue: [newStepInterval := (self valueRange *  self class defaultMinMarkerDistance / (self length max: 1)) ceiling].

	(self markerDistance > self class defaultMaxMarkerDistance)
		ifTrue: [newStepInterval := (self valueRange * self class defaultMaxMarkerDistance / (self length max: 1)) ceiling].

	(self stepInterval ~= newStepInterval)
		ifTrue: [self stepInterval: newStepInterval]