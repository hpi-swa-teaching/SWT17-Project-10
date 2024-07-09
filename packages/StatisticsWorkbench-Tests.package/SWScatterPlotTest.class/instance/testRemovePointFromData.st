testing
testRemovePointFromData

	| size |
	size := self scatterPlot dataPoints size.
	
	self assert: (self scatterPlot data contains: [:data | data x = 3 and: data y = 0]) .
	self scatterPlot data removeArray: #(3 0).
	self deny: (self scatterPlot data contains: [:data | data x = 3 and: data y = 0]).
	self assert: self scatterPlot dataPoints size = (size - 1) 