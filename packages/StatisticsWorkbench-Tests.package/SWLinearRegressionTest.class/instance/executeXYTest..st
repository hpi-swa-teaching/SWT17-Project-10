testing
executeXYTest: aTestValuesDictionary

	| correctSlope correctIntersect exampleLinearRegression |
	correctSlope := aTestValuesDictionary at: #correctSlope.
	correctIntersect := aTestValuesDictionary at: #correctIntersect.
	exampleLinearRegression := (SWLinearRegression newFromXValues: (aTestValuesDictionary at: #x) andYValues: (aTestValuesDictionary at: #y)).
	
	self assert: ((correctSlope - self tolerance to: correctSlope + self tolerance) rangeIncludes: exampleLinearRegression slope).
	self assert: ((correctIntersect - self tolerance to: correctIntersect + self tolerance) rangeIncludes: exampleLinearRegression intersect)