visualization
visualize: aSWData original: aSWOriginalData with: aSWChart 

	| chart |
	(self dataCollection)
		ifNil: [self dataCollection: (OrderedCollection with: aSWData)].
	chart := aSWChart create.
	chart diagram: self.
	self createCoordinateSystemFor: chart.
	self createLegendFor: chart with: aSWData.
	
	self add: chart.
	(chart isKindOf: SWSpiderChart)
		ifTrue: [chart data: (self transformToSpiderData: aSWData)]
		ifFalse: [chart data: aSWData].
	chart originalData: aSWOriginalData.

	self checkRelative: chart.
	self createIMGExportBtn.
	self update