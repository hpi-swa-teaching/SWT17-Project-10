testing
testCSVImport

	self mainformModel stream: SWCSVStub csvStreamLabeledData.
	self mainformModel setYAxis: {}.
	[self mainformModel parseCSVData] valueSupplyingAnswer: '; "'.
	self assert: '0, 1, 2, 3' equals: self mainformModel xAxis.
	self assert: '1, 1, 3, 1' equals: self mainformModel yAxis first.
	self assert: 'one, two, three, four' equals: self mainformModel namedColumns.
	