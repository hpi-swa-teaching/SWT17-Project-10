yAxis-selection
addYAxisValues: t1 
	| t2 |
	t2 := self getYAxis asOrderedCollection.
	t2 add: t1.
	self setYAxis: t2.
	self yAxisSelection: self defaultYAxisSelection.
	self changed: #getYAxis.
	self changed: #isYAxisSelected:.
	self changed: #yAxis:setSelected: