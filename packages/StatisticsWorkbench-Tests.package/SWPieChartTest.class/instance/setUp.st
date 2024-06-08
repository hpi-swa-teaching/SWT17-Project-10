testing
setUp

	super setUp.
	self data: SWDataStub createSeeded5;
		diagram: (SWDiagram new visualize: self data with: SWPieChart);
		pieChart: (self diagram charts) first