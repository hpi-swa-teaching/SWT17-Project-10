event-handling
processInputDataFor: aDiagramType

	| swdata parsedLabels parsedXData dataCollection |
	dataCollection := OrderedCollection new.
	parsedLabels :=  self splitStringAndConvertToStrings: self namedColumns.
	parsedXData := self splitStringAndConvertToNumbers: self xAxis.
	self parsedYData do: [:each |
		(aDiagramType new requiresXValues)
			ifTrue: [swdata := SWDataLabeled fromXValues: parsedXData versusYValues: each]
			ifFalse: [swdata := SWDataLabeled fromYValues: each].
		swdata setLabels: parsedLabels.
		dataCollection add: swdata].
	
	^ dataCollection