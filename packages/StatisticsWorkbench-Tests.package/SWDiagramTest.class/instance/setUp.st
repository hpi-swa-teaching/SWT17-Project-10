testing
setUp 

	super setUp.
	self data: SWDataStub createSeeded;
	     	diagramLineChart: (SWDiagram new visualize: self data with: SWLineChart);
	 	diagramBarChart: (SWDiagram new visualize: self data with: SWBarChart);
		diagramEmpty: SWDiagram new;
		diagramLineScatter: (SWDiagram new visualize: self data with: SWLineChart and: SWScatterPlot);
		diagramPieChart: (SWDiagram new visualize: self data with: SWPieChart);
		diagramScatterPlot: (SWDiagram new visualize: self data with: SWScatterPlot)
