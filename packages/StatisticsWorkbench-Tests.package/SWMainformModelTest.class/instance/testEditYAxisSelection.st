as yet unclassified
testEditYAxisSelection
	self assert: self mainformModel yAxisSelection size = 3.
	self mainformModel yAxis: 3 setSelected: true.
	self mainformModel editYAxisValues