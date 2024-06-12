event-handling
onVisualizeButtonClicked

	| containsSingleYChart |
	self chartsToVisualize isEmpty
		ifTrue: [self inform: 'Error: Please select some charts to visualize.']
		ifFalse: [
			containsSingleYChart := self hasOneEqualItemFrom: self chartsToVisualize with: self getSingleYCharts.
			(self yAxis size > 1  & containsSingleYChart)
				ifTrue: [self inform: 'Error: Cannot build Charts with multiple yAxis.']
				ifFalse: [self visualizeCharts]]