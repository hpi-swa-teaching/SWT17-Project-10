visualization
visualizeAll: aSWDataCollection with: aSWChart

	(aSWChart new isKindOf: SWBarChart)
		ifTrue: [self visualizeStacked: aSWDataCollection with: aSWChart]
		ifFalse: [aSWDataCollection do: [:swData | self visualize: swData with: aSWChart]]
	
