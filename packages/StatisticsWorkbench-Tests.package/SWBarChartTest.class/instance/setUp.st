testing
setUp 

	super setUp.

	self	 
		data: SWDataStub createSeeded4;
		diagram: (SWDiagram new visualize: self data with: SWBarChart);
		barChart: (self diagram charts) first
