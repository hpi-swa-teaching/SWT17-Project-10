chart-selection
chartsToVisualize

	^ self getAllCharts select: [:each | self chartSelection at: (self getAllCharts indexOf: each)]