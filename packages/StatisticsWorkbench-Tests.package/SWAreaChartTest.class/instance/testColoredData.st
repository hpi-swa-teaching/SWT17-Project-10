testing
testColoredData
	
	| coloredData coloredData2 |
	
	coloredData := SWDataStub createSeededRandom.
	coloredData dataColor: (Color r: 1.0 g: 102/255 b: 1.0).
	
	coloredData2 := SWDataStub createSeededRandom.
	coloredData2 dataColor: Color orange.
	
	self areaChart data: coloredData.
	self assert: self areaChart lineColor equals: (Color r: 1.0 g: 102/255 b: 1.0).
	
	self areaChart data: coloredData2.
	self assert: self areaChart lineColor equals: Color orange
