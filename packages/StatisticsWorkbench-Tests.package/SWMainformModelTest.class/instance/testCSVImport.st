testing
testCSVImport

	self mainformModel stream: SWCSVStub csvStreamLabeledDataMultipleY.
	self mainformModel setYAxis: {}.
	[self mainformModel parseCSVData] valueSupplyingAnswer: '; "'.
	self assert: '0, 1, 2, 3' equals: self mainformModel xAxis.
	self assert: ((self mainformModel yAxis) includes: '1, 1, 3, 1').
	self assert: ((self mainformModel yAxis) includes: '4, 2, 8, 7').
	self assert: ((self mainformModel yAxis) includes: '5, 9, 5, 6').
	self assert: ((self mainformModel yAxis) includes: '3, 4, 9, 2').
	self assert: 'one, two, three, four' equals: self mainformModel namedColumns.
	