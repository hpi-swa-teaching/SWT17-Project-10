yAxis-selection
removeYAxisValues
	
	| tempCollection index |
	yAxisSelection isEmpty
	ifTrue: [self inform: 'Error: Please add some yAxis values before!'];
	ifFalse: [
		index := 1.
		tempCollection := OrderedCollection new.
		yAxisSelection do: [ :element | element ifFalse: [tempCollection add: (self yAxis at: index)]. 
		index := index + 1].
		
	self setYAxis: tempCollection;
	yAxisSelection: self defaultYAxisSelection;
	changed: #getYAxis;
	changed: #isYAxisSelected:;
	changed: #yAxis:setSelected:]