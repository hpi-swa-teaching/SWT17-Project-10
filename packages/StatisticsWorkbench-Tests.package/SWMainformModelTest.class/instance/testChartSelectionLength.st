testing
testChartSelectionLength 

	self assert: [(self mainformModel chartSelection size) = (self numberOfCharts + 3)]