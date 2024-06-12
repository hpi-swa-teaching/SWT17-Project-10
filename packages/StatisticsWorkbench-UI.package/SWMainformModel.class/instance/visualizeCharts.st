event-handling
visualizeCharts

	| diagram chartType|
	
	self chartsToVisualize
		do: [:each | 
			(self getSingleYCharts includes: each)
				 ifTrue: [
					chartType := self getClassForChart: each.
					diagram := SWDiagram new visualize: (self processInputDataForSingleYAxisChartWith: chartType) with: chartType.
					diagram applyColorTheme: (self selectedTheme) new.
					diagram openInWindowLabeled: '']
				 ifFalse: ["TODO init with stacked things with processInputDataForMultipleYAxisChartWith:"]
			]