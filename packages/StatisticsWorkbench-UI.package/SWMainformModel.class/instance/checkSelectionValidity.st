event-handling
checkSelectionValidity

	(self chartsToVisualize isEmpty)
		ifTrue: [
			self inform: 'Error: Please select some charts to visualize.'.
			^ false].
	(self yAxis isEmpty)
		ifTrue: [
			self inform: 'Error: Please add some yAxis values.'.
			^ false].
	(self yAxis size > 1  & (self chartsToVisualize includes: 'PieChart'))
		ifTrue: [
			self inform: 'Error: Cannot build PieCharts with multiple data series.'.
			^ false].
	self parseYData.
	(self checkYValidity)
		ifFalse: [
			self inform: 'Error: Data series have different sizes.'.
			^ false].

	^ true