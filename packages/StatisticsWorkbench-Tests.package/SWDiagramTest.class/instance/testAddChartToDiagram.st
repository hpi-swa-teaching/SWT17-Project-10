testing
testAddChartToDiagram

	| chartCountBeforeInsert |	
	chartCountBeforeInsert := self diagramLineChart charts size.
	self diagramLineChart add: SWScatterPlot create.
	
	self assert: (chartCountBeforeInsert + 1) equals: self diagramLineChart charts size