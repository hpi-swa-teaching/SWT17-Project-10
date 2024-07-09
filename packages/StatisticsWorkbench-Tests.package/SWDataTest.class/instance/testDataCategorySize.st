testing
testDataCategorySize

	| namedColumns swdataCollection categoryA |
	namedColumns := SWDataStub createSeededNamedColumns1.
	swdataCollection := SWDataUnlabeled fromNamedColumns: namedColumns  xAxis: 'Column1' yAxis: 'Column2' categorizedBy: 'Category'.			
	categoryA := (swdataCollection select: [:each| each dataName = 'A']) first.	
				
	self assert: (categoryA size = 3)
