as yet unclassified
open
	| data graph dataString window |
	
	dataString := 'x|y 1|22 2|110 3|64 4|211 5|35'.
	
	data := SWDataUnlabeled fromString: dataString ofDataDimension: 2.
	
	graph := (SWDiagram new visualize: data with: SWBarGraph create).
	window := graph openInWindow.
	(graph charts at: 1) barWidth: 40.
	
	^ window