testing
testDataAllCategorized

	| namedColumns swdataCollection actual expected |
	namedColumns := SWDataStub createSeededNamedColumns2.
	expected := (namedColumns at: 'Column1') size.
	swdataCollection := SWDataUnlabeled fromNamedColumns: namedColumns  xAxis: 'Column1' yAxis: 'Column2' categorizedBy: 'Category'.			
	actual := (swdataCollection collect: [:each| each size]) sum.
	
	self assert: (actual = expected)