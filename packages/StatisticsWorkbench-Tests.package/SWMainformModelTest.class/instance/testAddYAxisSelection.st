testing
testAddYAxisSelection

	self assert: self mainformModel yAxisSelection size = 3.
	self mainformModel addYAxisValues: '2,3,3,3,1'.
	self assert: self mainformModel yAxisSelection size = 4
