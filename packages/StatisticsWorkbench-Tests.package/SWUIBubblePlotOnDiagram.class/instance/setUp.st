as yet unclassified
setUp

	super setUp.
	self
		data: SWDataStub createSeededXYZ;
		diagram: (SWDiagram new visualizeAll: self data with: SWBubblePlot);
		bubblePlot: (self diagram charts) first