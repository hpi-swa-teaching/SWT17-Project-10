event-handling
processInputDataFor: aDiagramType

	| swdata parsedLabels parsedXData parsedYData|
	
	parsedLabels :=  self splitStringAndReturnStrings: self namedColumns.
	parsedXData := self splitStringAndConvertToNumbers: self xAxis.
	parsedYData := self splitStringAndConvertToNumbers: self yAxis.
	(aDiagramType new requiresXValues)
		ifTrue: [swdata := SWDataLabeled fromXValues: parsedXData versusYValues: parsedYData]
		ifFalse: [swdata := SWDataLabeled fromYValues: parsedYData].
	(aDiagramType isKindOf: SWSpiderChart)
		ifTrue: [swdata dimensionNames: parsedLabels]
		ifFalse: [swdata setLabels: parsedLabels].
	
	^ swdata