testing
testDefaultChartSelection 

	(1 to: self numberOfCharts)	do: [:each|
		self assert: [(self mainformModel isSelected: each) not].	
	]
		