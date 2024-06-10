visualization
transformToSpiderData: aSWData

	| transformedData dataArray maxValue |
	dataArray := (aSWData collect: [:vector | vector at: 2]) asArray.
	maxValue := dataArray max.
	(maxValue > 100)
		ifTrue: [dataArray := dataArray collect: [:each | (each / maxValue) * 100]].
	transformedData := SWDataLabeled new add: dataArray.
	transformedData dataName: aSWData dataName.
	(aSWData dimensions < 3)
		ifTrue: [transformedData dimensionNames: (aSWData collect: [:vector | vector labelName])]
		ifFalse: [transformedData dimensionNames: (aSWData dimensionNames)].
		
	^ transformedData