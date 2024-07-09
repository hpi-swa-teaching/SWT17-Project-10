as yet unclassified
newFromScatterPlot: aScatterPlot plotOn: aSWDiagram

	| linearRegression |
	linearRegression := self newFromScatterPlot: aScatterPlot.
	linearRegression plotOn: aSWDiagram.

	^ linearRegression