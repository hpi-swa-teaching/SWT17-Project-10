testing
testAdjustStepInterval

	| axis |
	axis := SWAxis create.
	axis orientation: #vertical.
	axis endPoint: (axis startPoint x + 100) @ axis startPoint y.
	
	self assert: [axis markerDistance >= SWAxis defaultMinMarkerDistance]
		description: axis markerDistance printString, ' should be greater than ', SWAxis defaultMinMarkerDistance.
	
	axis endPoint: (axis startPoint x + 1000) @ axis startPoint y.
	
	self assert: [axis markerDistance <= SWAxis defaultMaxMarkerDistance]
		description: axis markerDistance printString, ' should be less than ', SWAxis defaultMaxMarkerDistance