testing
executePlotTest: aTestValuesDictionary

	| correctSlope correctIntersect exampleLinearRegression data scatterPlot |
	correctSlope := aTestValuesDictionary at: #correctSlope.
	correctIntersect := aTestValuesDictionary at: #correctIntersect.
	data := SWDataUnlabeled fromXValues: (aTestValuesDictionary at: #x) versusYValues: (aTestValuesDictionary at: #y).
	scatterPlot := SWDiagram new visualize: data with: SWScatterPlot.
	exampleLinearRegression := SWLinearRegression newFromScatterPlot: (scatterPlot charts first) plotOn: scatterPlot.
	
	self assert: ((correctSlope - self tolerance to: correctSlope + self tolerance) rangeIncludes: exampleLinearRegression slope).
	self assert: ((correctIntersect - self tolerance to: correctIntersect + self tolerance) rangeIncludes: exampleLinearRegression intersect).
	self assert: 2 equals: scatterPlot charts size