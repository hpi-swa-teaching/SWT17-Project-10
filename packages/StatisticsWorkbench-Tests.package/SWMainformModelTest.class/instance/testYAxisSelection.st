testing
testYAxisSelection
	self mainformModel yAxis: 1 setSelected: true.
	self mainformModel yAxis: 3 setSelected: true.
	self
		assert: [(mainformModel isYAxisSelected: 1)
				and: (mainformModel isYAxisSelected: 3)]