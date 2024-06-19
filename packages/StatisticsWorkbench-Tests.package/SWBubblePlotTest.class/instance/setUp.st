testing
setUp

	super setUp.
	
	self	
		data: SWDataStub createSeededXYZ;
		diagram: (SWDiagram new visualize: self data with: SWScatterPlot);
		bubblePlot: (self diagram charts) first