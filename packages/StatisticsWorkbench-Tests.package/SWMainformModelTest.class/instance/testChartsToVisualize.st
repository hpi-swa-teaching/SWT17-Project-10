testing
testChartsToVisualize

	| expectedValue |
	
	self mainformModel chart: 1 setSelected: true.
	self mainformModel chart: 2 setSelected: true.
	expectedValue := {(self mainformModel getAllCharts at: 1) . (self mainformModel getAllCharts at: 2)}.
	
	self assert: [self mainformModel chartsToVisualize = expectedValue]
	




