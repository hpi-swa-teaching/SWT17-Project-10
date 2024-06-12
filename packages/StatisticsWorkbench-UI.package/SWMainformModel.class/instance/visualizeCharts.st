event-handling
visualizeCharts

	| diagram chartType |
	
	self chartsToVisualize
		do: [:each |
			diagram := self createDiagramFor: each.
			chartType := self getClassForChart: each.
			diagram visualizeAll: (self processInputDataFor: chartType) with: chartType.
			diagram applyColorTheme: (self selectedTheme) new.
			diagram openInWindowLabeled: '']