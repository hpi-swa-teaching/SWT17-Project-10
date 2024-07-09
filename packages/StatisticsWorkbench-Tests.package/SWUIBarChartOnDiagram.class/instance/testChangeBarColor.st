testing
testChangeBarColor

	| selectedDataPoint|
	self diagram openInWindowLabeled: 'test' inWorld: self world.
	self assert: (self barChart data contains: [:data | data x = 0 and: data y = 1]).
	selectedDataPoint := self barChart bars detect: [:dataPoint | dataPoint vector x = 0 and: dataPoint vector y = 1].
	self deny: selectedDataPoint color equals: Color red.
	self hand handleEvent: (self redMouseDownAt: (selectedDataPoint center)).
	self assert: selectedDataPoint color equals: Color red