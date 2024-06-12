event-handling
onExportImageButtonClicked
	
	| diagram containsSingleYChart chartType |
	self chartsToVisualize isEmpty
		ifTrue: [self inform: 'Error: Please select some charts to export.']
		ifFalse: [
			containsSingleYChart := self hasOneEqualItemFrom: self chartsToVisualize with: self getSingleYCharts.
			(self yAxis size > 1  & containsSingleYChart)
				ifTrue: [self inform: 'Error: Cannot export Charts with multiple yAxis.']
				ifFalse: [
					self chartsToVisualize
						do: [:each |
							(self getSingleYCharts includes: each)
								 ifTrue: [
										chartType := self getClassForChart: each.
										diagram := SWDiagram new visualize: (self processInputDataForSingleYAxisChartWith: chartType) with: chartType.
										diagram applyColorTheme: (self selectedTheme) new.
										self exportIMG: diagram]
								 ifFalse: ["TODO init with stacked things with processInputDataForMultipleYAxisChartWith:"]
					]
				]
			]