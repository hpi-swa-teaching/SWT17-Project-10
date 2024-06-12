yAxis-selection
removeYAxisValues
	
	| temp index |
	yAxisSelection isEmpty
	ifTrue: [self inform: 'Error: Please add some yAxis values before!'];
	ifFalse: [
	index := 1.
	temp := OrderedCollection new.
	yAxisSelection do: [ :element |
		element
   			ifFalse: [temp add: (self yAxis at: index)].
		index := index +1.
		
].
	self setYAxis: temp.
	self yAxisSelection: self defaultYAxisSelection.
	self changed: #getYAxis.
	self changed: #isYAxisSelected:.
	self changed: #yAxis:setSelected:]