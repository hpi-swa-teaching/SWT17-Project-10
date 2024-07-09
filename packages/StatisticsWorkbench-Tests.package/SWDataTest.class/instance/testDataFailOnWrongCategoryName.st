testing
testDataFailOnWrongCategoryName

	| namedColumns |
	namedColumns := SWDataStub createSeededNamedColumns2.
	self should: [SWDataUnlabeled fromNamedColumns: namedColumns  xAxis: 'Column1' yAxis: 'Column2' categorizedBy: 'WrongCategoryName'] raise: SWInvalidArgumentError.			
	self shouldnt: [SWDataUnlabeled fromNamedColumns: namedColumns  xAxis: 'Column1' yAxis: 'Column2' categorizedBy: 'Category'] raise: SWInvalidArgumentError
