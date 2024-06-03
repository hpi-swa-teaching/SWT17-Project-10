chart-selection
chartsToVisualize

	^ self getCharts select: [:each | self chartSelection at: (self getCharts indexOf: each)]