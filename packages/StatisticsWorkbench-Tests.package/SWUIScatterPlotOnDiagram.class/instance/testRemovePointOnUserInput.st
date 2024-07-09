testing
testRemovePointOnUserInput

	| selectedDataPoint |
	self diagram openInWorld: self world.
	
	self assert: (self scatterPlot data contains: [:data | data x = 3 and: data y = 0 ]) .
	selectedDataPoint := self scatterPlot dataPoints detect: [:dataPoint | dataPoint vector x = 3 and: dataPoint vector y = 0].
	self hand handleEvent: (self yellowMouseDownAt: selectedDataPoint center).
	self deny: (self scatterPlot data contains: [:data | data x = 3 and: data y = 0 ])