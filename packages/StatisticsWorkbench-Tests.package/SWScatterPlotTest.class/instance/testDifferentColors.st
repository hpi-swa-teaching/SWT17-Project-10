testing
testDifferentColors

	| color1 color2 |

	self diagram: (SWDiagram new visualize: SWDataStub createSeededRandom and: SWDataStub createSeededRandom with: SWScatterPlot and: SWScatterPlot).
	color1 := (self diagram charts at: 1) pointColor.
	color2 := (self diagram charts at: 2) pointColor.
	self assert: color1 ~= color2