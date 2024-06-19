testing
testRemoveOnlyOneOnUserInput

	| size selectedDataPoint |
	
	self diagram openInWorld: self world.
	size := self pieChart pieSlices size.
	selectedDataPoint := self pieChart pieSlices detect: [:dataPoint | dataPoint vector x = 3 and: dataPoint vector y = 30].
	self diagram charts first removeFromData: selectedDataPoint.
	self assert: self pieChart pieSlices size = (size - 1) 