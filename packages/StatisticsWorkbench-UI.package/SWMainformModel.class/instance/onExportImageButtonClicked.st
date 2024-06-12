event-handling
onExportImageButtonClicked

	self chartsToVisualize isEmpty
		ifTrue: [self inform: 'Error: Please select some charts to visualize.']
		ifFalse: [
			(self yAxis size > 1  & (self chartsToVisualize includes: 'PieChart'))
				ifTrue: [self inform: 'Error: Cannot build PieCharts with multiple data series.']
				ifFalse: [
					self parseYData.
					(self checkYValidity)
						ifTrue: [self visualizeCharts do: [:each | self exportIMG: each]]
						ifFalse: [self inform: 'Error: Data series have different sizes.']]]