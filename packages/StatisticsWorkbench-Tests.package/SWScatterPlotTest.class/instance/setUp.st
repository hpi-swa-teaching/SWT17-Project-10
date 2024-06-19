testing
setUp

	super setUp.
	
	self	
		data: SWDataStub createSeeded;
		diagram: (SWDiagram new visualize: self data with: SWScatterPlot);
		scatterPlot: (self diagram charts) first.
	self diagram applyColorTheme: SWHPITheme new.