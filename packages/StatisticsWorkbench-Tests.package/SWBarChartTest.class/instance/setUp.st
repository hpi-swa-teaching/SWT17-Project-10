testing
setUp 

	super setUp.

	self	 
		data: SWDataStub createSeeded;
		diagram: (SWDiagram new visualize: self data with: SWBarChart);
		barChart: (self diagram charts) first
