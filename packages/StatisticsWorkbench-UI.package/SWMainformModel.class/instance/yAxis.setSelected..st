yAxis-selection
yAxis: t1 setSelected: t2 
	self yAxisSelection at: t1 put: t2.
	self changed: #yAxisSelection