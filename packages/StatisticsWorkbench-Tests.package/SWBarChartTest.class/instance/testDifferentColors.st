testing
testDifferentColors

	| color1 color2 |
	self diagram: (SWDiagram new visualize: SWDataStub createSeeded5 and: SWDataStub createSeeded6 with: SWBarChart and: SWBarChart).
	color1 := (self diagram charts at: 1) barColor.
	color2 := (self diagram charts at: 2) barColor.
	self assert: color1 ~= color2