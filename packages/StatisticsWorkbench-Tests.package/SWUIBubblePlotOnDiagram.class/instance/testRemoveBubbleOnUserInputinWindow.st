as yet unclassified
testRemoveBubbleOnUserInputinWindow

	| selectedDataPoint|
	self diagram openInWindowLabeled: 'test' inWorld: self world.
	
	self assert: (self bubblePlot data contains: [:data | data x = 1 and: data y = 210]).
	selectedDataPoint:= self bubblePlot dataPoints detect: [:dataPoint | dataPoint vector x = 1 and: dataPoint vector y = 210 ].
	self hand handleEvent: (self yellowMouseDownAt: (selectedDataPoint center)).
	self deny: (self bubblePlot data contains: [:data | data x = 1 and: data y = 210])