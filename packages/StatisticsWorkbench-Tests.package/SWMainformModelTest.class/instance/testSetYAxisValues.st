as yet unclassified
testSetYAxisValues

	self mainformModel setYAxisValues:  '1,2,3'.
	self assert: self mainformModel yAxis = '1,2,3'.
	