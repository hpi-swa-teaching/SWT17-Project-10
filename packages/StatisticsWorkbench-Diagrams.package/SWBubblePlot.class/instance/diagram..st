as yet unclassified
diagram: aDiagram

	diagram := aDiagram.
	self maxValuesPerData: ((diagram dataCollection collect: [:aData | aData size]) max)
