testing
testChartSelection 

	self mainformModel chart: 1 setSelected: true.
	self mainformModel chart: 3 setSelected: true.
	
	self assert: [(mainformModel isSelected: 1) and: (mainformModel isSelected: 3)]