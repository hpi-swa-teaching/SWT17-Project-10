testing
testEditYAxisSelection

	self assert: 3 equals: self mainformModel yAxisSelection size.
	self mainformModel yAxis: 3 setSelected: true.
	[self mainformModel editYAxisValues] valueSupplyingAnswer: '1, 2, 3, 4, 5'.
	self assert: 3 equals: self mainformModel yAxisSelection size.
	self assert: '1, 2, 3, 4, 5' equals: (self mainformModel yAxis at: 3).