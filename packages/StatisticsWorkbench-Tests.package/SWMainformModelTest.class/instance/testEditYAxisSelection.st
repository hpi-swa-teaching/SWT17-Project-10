testing
testEditYAxisSelection

	self assert: self mainformModel yAxisSelection size = 3.
	self mainformModel yAxis: 3 setSelected: true.
	[self mainformModel editYAxisValues] valueSupplyingAnswer: '1, 2, 3, 4, 5'