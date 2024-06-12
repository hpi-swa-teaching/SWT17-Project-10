event-handling
processInputDataForMultipleYAxisChartWith: aDiagramType

	| swdata parsedLabels parsedXData parsedYData|
	"Do something with yAxis <- this is an array with strings and each has to be splitted first by splitStringAndConvertToNumbers:"
	"aDiagramType is the class of the diagramm (not a string anymore) is before converted via getClassForChart:"
	parsedLabels :=  self splitStringAndReturnStrings: self namedColumns.
	parsedXData := self splitStringAndConvertToNumbers: self xAxis.
	parsedYData := self splitStringAndConvertToNumbers: self yAxis first.
	(aDiagramType new requiresXValues)
		ifTrue: [swdata := SWDataLabeled fromXValues: parsedXData versusYValues: parsedYData]
		ifFalse: [swdata := SWDataLabeled fromYValues: parsedYData].
	(aDiagramType isKindOf: SWSpiderChart)
		ifTrue: [swdata dimensionNames: parsedLabels]
		ifFalse: [swdata setLabels: parsedLabels].
	
	^ swdata