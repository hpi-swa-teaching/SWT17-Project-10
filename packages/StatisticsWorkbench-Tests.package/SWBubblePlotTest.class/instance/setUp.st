testing
setUp

	| diagram |
	super setUp.
	diagram := SWDiagram new.
	
	self	
		data: SWDataStub createSeededXYZ;
		diagram: (diagram visualizeAll: self data with: SWBubblePlot);
		bubblePlot: (self diagram charts) first.
		
	diagram addSlider.