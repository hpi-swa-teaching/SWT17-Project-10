testing
testRemoveYAxisSelection
	self assert: self mainformModel yAxisSelection size = 3.
	self mainformModel yAxis: 1 setSelected: true.
	self mainformModel removeYAxisValues.
	self assert: self mainformModel yAxisSelection size = 2