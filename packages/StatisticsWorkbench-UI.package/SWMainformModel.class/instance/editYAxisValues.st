yAxis-selection
editYAxisValues

	| value index |
	index := self yAxisSelection indexOf: true ifAbsent: [0].
	(index = 0)
		ifTrue: [self inform: 'Error: Please select one yAxis before!']
		ifFalse: [
			index := 1.
			yAxisSelection do: [:t4 | t4
				ifTrue: [
					value := UIManager default
						request: 'Enter your y-Axis values (separated by ",")'
						initialAnswer: (self yAxis at: index).
					(value isEmpty) ifFalse: [self yAxis at: index put: value]].
					index := index + 1].
	self yAxisSelection: self defaultYAxisSelection;
	changed: #getYAxis;
	changed: #isYAxisSelected:;
	changed: #yAxis:setSelected:]