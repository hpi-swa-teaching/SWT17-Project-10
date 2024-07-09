instance creation
open

	| graph |
	graph := SWDiagram new visualize: self data with: SWScatterPlot.
	SWLinearRegression newFromScatterPlot: (graph charts) first plotOn: graph.

	^ graph openInWindowLabeled: ''
