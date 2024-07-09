testing
testDataCategorization

	| namedColumns swdataCollection |
	namedColumns := SWDataStub createSeededNamedColumns1.
	swdataCollection := SWDataUnlabeled fromNamedColumns: namedColumns  xAxis: 'Column1' yAxis: 'Column2' categorizedBy: 'Category'.
		
	self assert: (swdataCollection size = 2)