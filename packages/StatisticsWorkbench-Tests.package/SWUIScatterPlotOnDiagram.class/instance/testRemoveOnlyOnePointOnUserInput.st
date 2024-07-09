testing
testRemoveOnlyOnePointOnUserInput

	| size selectedDataPoint |
	size := self scatterPlot dataPoints size.
	self diagram openInWorld: self world.
	selectedDataPoint := self scatterPlot dataPoints detect: [:dataPoint | dataPoint vector x = 3 and: dataPoint vector y = 0].
	self hand handleEvent: (self yellowMouseDownAt: selectedDataPoint center).
	
	self assert: self scatterPlot dataPoints size = (size - 1) 