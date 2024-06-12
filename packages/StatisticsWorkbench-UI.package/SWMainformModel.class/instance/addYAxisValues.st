yAxis-selection
addYAxisValues
	
	| t1 t2 |
	t1 := UIManager default request: 'Enter your y-Axis values (separated by ",")' initialAnswer: '32, 44, 65, 45, 3'.
	t2 := self getYAxis asOrderedCollection.
	t2 add: t1.
	self setYAxis: t2.
	self yAxisSelection: self defaultYAxisSelection.
	self changed: #getYAxis.
	self changed: #isYAxisSelected:.
	self changed: #yAxis:setSelected: