yAxis-selection
editYAxisValues
	
	| t1  index|
	index := self yAxisSelection indexOf: true ifAbsent: [0].
	index = 0
		ifTrue: [self inform: 'Error: Please select one yAxis before!']
		ifFalse: [
			index := 1.
		 	yAxisSelection do: [ :element |
				element
   					ifTrue: [
						t1 := UIManager default request: 'Enter your y-Axis values (separated by ",")' initialAnswer: (self yAxis at: index).
						t1 isEmpty
   							ifFalse: [self yAxis at: index put: t1].
						].
					index := index + 1
		
].
	self yAxisSelection: self defaultYAxisSelection.
	self changed: #getYAxis.
	self changed: #isYAxisSelected:.
	self changed: #yAxis:setSelected:.].