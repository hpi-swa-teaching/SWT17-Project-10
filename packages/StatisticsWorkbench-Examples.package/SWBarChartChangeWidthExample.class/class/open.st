instance creation
open

	| graph |
		
	graph := SWDiagram new visualize: self data with: SWBarChart.
	(graph charts first) barWidth: self newBarWidth.
	
	^ graph openInWindowLabeled: ''
