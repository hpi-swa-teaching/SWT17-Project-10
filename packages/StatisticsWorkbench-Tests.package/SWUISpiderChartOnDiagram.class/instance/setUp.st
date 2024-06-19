testing
setUp 

	super setUp.

	self	
		data: SWDataStub createSeededMultiDimensional;
		diagram: (SWDiagram new visualize: self data with: SWSpiderChart);
		spiderChart: (self diagram charts) first