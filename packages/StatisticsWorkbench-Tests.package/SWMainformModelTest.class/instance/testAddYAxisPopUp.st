testing
testAddYAxisPopUp
	self assert: self mainformModel yAxisSelection size = 3.
	[self mainformModel showYAxisPopup] valueSupplyingAnswer: '1, 2, 3, 4, 5'.
	self assert: self mainformModel yAxisSelection size = 4
