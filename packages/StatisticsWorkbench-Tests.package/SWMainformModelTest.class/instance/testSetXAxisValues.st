testing
testSetXAxisValues

	self mainformModel setXAxisValues:  '1,2,3'.
	self assert: self mainformModel xAxis = '1,2,3'.
	