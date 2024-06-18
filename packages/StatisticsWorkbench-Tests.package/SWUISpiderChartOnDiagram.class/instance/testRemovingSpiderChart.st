testing
testRemovingSpiderChart

	self assert: self diagram charts size equals: 1.
	diagram deleteChart: spiderChart.
	self assert: self diagram charts size equals: 0