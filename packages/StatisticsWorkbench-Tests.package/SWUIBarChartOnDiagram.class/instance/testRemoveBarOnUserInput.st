testing
testRemoveBarOnUserInput

	| selectedDataPoint |
	self diagram openInWorld: self world.
	
	self assert: (self barChart data contains: [:data | data x = 1 and: data y = 3]).
	selectedDataPoint := self barChart bars detect: [:dataPoint | dataPoint vector x = 1 and: dataPoint vector y = 3 ].
	self hand handleEvent: (self yellowMouseDownAt: (selectedDataPoint center)).
	self deny: (self barChart data contains: [:data | data x = 1 and: data y = 3])