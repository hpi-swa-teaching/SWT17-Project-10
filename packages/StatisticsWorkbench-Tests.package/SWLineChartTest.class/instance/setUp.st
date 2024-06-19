testing
setUp 

	super setUp.
	
	self 
		data: SWDataStub createSeededRandom;
		diagram: (SWDiagram new visualize: self data with: SWLineChart);
		lineChart: (self diagram charts) first.
	self diagram centerAxes