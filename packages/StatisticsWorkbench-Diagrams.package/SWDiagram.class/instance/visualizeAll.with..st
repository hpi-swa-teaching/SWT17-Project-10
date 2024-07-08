visualization
visualizeAll: aSWDataCollection with: aSWChartSubclass

	| processedData reverseCollection reverseOriginalCollection|
	self dataCollection: aSWDataCollection deepCopy.
	processedData := aSWDataCollection deepCopy.
	
	(self normalized) ifTrue: [self normalizeData: processedData].
	(self stacked) ifTrue: [self stackData: processedData].

	reverseCollection := processedData reversed.
	reverseOriginalCollection := self dataCollection reversed.
	reverseCollection doWithIndex: [:swData :index |
		self visualize: swData original: (reverseOriginalCollection at: index) with: aSWChartSubclass]
