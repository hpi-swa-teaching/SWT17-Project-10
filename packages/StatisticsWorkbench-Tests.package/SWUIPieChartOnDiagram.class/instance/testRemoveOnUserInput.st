testing
testRemoveOnUserInput

	| size selectedDataPoint |
	
	self diagram openInWorld: self world.
	size := self pieChart pieSlices size.
	self assert: (self pieChart data contains: [:data | data x = 3 and: data y = 30]) .
	selectedDataPoint := self pieChart pieSlices detect: [:dataPoint | dataPoint vector x = 3 and: dataPoint vector y = 30].
	self hand handleEvent: (self yellowMouseDownAt: selectedDataPoint slice center "+ self clickOffset").
	self diagram charts first removeFromData: selectedDataPoint.
	self deny: (self pieChart data contains: [:data | data x = 3 and: data y = 30]).
	self assert: self pieChart pieSlices size = (size - 1) 