testing
testLabelPosition

	self diagram: (SWDiagram new visualize: SWDataStub createSeeded5 with: SWBarChart).
	self assert: (self diagram charts first bars first bottomLabelMorph notNil).
	self assert: (self diagram charts first bars first barLabelMorph isNil).
	
	self diagram: SWDiagram new.
	self diagram stacked: true.
	self diagram: (self diagram visualize: SWDataStub createSeeded5 and: SWDataStub createSeeded6 with: SWBarChart and: SWBarChart).
	self assert: (self diagram charts first bars first bottomLabelMorph isNil).
	self assert: (self diagram charts first bars first barLabelMorph notNil).
	self diagram stacked: false.