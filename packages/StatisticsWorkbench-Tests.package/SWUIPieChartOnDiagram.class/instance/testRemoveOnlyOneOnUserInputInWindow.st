testing
testRemoveOnlyOneOnUserInputInWindow

	| size selectedDataPoint |
	
	self diagram openInWindowLabeled: 'test' inWorld: self world.
	size := self pieChart pieSlices size.
	selectedDataPoint := self pieChart pieSlices detect: [:dataPoint | dataPoint vector x = 3 and: dataPoint vector y = 30].
	self hand handleEvent: (self yellowMouseDownAt: selectedDataPoint slice center + self clickOffset).
	self assert: self pieChart pieSlices size = (size - 1) 