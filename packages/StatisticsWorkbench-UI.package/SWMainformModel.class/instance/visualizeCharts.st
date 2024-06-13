event-handling
visualizeCharts

	| diagram chartType diagramCollection |
	
	diagramCollection := OrderedCollection new.
	self chartsToVisualize
		do: [:each |
			diagram := self createDiagramFor: each.
			chartType := self getClassForChart: each.
			diagram 
				visualizeAll: (self processInputDataFor: chartType) with: chartType;
				applyColorTheme: (self selectedTheme) new.
			diagramCollection add: diagram].
		
	^ diagramCollection