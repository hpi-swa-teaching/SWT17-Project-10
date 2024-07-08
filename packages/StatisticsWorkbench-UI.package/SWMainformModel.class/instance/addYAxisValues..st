yAxis-selection
addYAxisValues: aString 

	| yCollection |
	yCollection := self getYAxis asOrderedCollection.
	yCollection add: aString.
	self
		setYAxis: yCollection;
		yAxisSelection: self defaultYAxisSelection;
		changed: #getYAxis;
		changed: #isYAxisSelected:;
		changed: #yAxis:setSelected: