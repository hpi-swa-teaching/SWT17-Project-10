event-handling
checkSelectionValidity

	(self chartsToVisualize isEmpty)
		ifTrue: [self inform: 'Error: Please select some charts to visualize.']
		ifFalse: [
			(self yAxis isEmpty)
				ifTrue: [self inform: 'Error: Please add some yAxis values.']
				ifFalse: [
					(self yAxis size > 1  & (self chartsToVisualize includes: 'PieChart'))
						ifTrue: [self inform: 'Error: Cannot build PieCharts with multiple data series.']
						ifFalse: [
							self parseYData.
							(self checkYValidity)
								ifTrue: [^ true]
								ifFalse: [self inform: 'Error: Data series have different sizes.']]]].

	^ false