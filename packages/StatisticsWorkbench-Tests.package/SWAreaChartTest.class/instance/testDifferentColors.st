testing
testDifferentColors

	| color1 color2 |

	self diagram: (SWDiagram new visualize: SWDataStub createSeededRandom and: SWDataStub createSeededRandom with: SWLineChart and: SWLineChart).
	color1 := (self diagram charts at: 1) lineColor.
	color2 := (self diagram charts at: 2) lineColor.
	self assert: color1 ~= color2