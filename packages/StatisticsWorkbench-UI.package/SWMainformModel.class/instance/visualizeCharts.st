event-handling
visualizeCharts

	| diagram chartType|
	
	self chartsToVisualize
		do: [:each |
			chartType := self getClassForChart: each.
			diagram := SWDiagram new visualizeAll: (self processInputDataFor: chartType) with: chartType.
			diagram applyColorTheme: (self selectedTheme) new.
			diagram openInWindowLabeled: '']