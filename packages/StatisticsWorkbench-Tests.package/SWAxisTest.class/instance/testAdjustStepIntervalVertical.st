testing
testAdjustStepIntervalVertical

	| axis |
	axis := SWAxis create.
	axis endPoint: axis startPoint x @ (axis startPoint y + 100);
		orientation: #vertical.
	
	self assert: [axis markerDistance >= SWAxis defaultMinMarkerDistance]
		description: axis markerDistance printString, ' should be greater than ', SWAxis defaultMinMarkerDistance.
	
	axis endPoint: axis startPoint x @ (axis startPoint y + 1000).
	
	self assert: [axis markerDistance <= SWAxis defaultMaxMarkerDistance]
		description: axis markerDistance printString, ' should be less than ', SWAxis defaultMaxMarkerDistance