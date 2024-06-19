testing
testRemovingSpiderChart

	self assert: 1 equals: self diagram charts size.
	spiderChart removeAll.
	diagram deleteChart: spiderChart.
	self assert: self diagram charts isEmpty