event-handling
onVisualizeButtonClicked

	| swdata parsedLabels parsedXData parsedYData|
	
	parsedLabels :=  self splitStringAndReturnStrings: self namedColumns.
	parsedXData := self splitStringAndConvertToNumbers: self xAxis.
	parsedYData := self splitStringAndConvertToNumbers: self yAxis.
	swdata := SWDataLabeled fromXValues:  parsedXData 
		versusYValues: parsedYData.
	swdata setLabels: parsedLabels.
	
	self chartsToVisualize isEmpty
    ifTrue: [
        self inform: 'Error: Please select some charts to visualize.'
    ] ifFalse: [
        self chartsToVisualize
            do: [:each | (SWDiagram new visualize: swdata with: each create) openInWindow].
    ].