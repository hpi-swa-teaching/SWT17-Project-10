testing
testXYPopupOnHover

	| selectedDataPoint |
	self diagram openInWorld: self world.
	selectedDataPoint := self scatterPlot dataPoints detect: [:dataPoint | dataPoint vector x = 3 and: dataPoint vector y = 0].
	self hand handleEvent: (self mouseEnter: selectedDataPoint center).
	
	self assert: selectedDataPoint infoPopup notNil