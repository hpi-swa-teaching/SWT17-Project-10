event-handling
processInputData

	| swdata parsedLabels parsedXData parsedYData|
	
	parsedLabels :=  self splitStringAndReturnStrings: self namedColumns.
	parsedXData := self splitStringAndConvertToNumbers: self xAxis.
	parsedYData := self splitStringAndConvertToNumbers: self yAxis.
	swdata := SWDataLabeled fromXValues:  parsedXData 
		versusYValues: parsedYData.
	swdata setLabels: parsedLabels.
	
	^ swdata