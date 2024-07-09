testing
testDatapointsOnVertices

	| distance |
	1 to: self lineChart data size do: [:index |
		distance := (self lineChart dataPoints at: index) center dist: (self lineChart vertices at: index).
		self assert: distance <= 5]