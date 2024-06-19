as yet unclassified
testFiltering
	
	| dataCollection diagram checkCollection|
	dataCollection := OrderedCollection new.
	dataCollection
		add: self data1;
		add: self data2;
		add: self data3.
		
	diagram := (SWDiagram new visualizeAll: dataCollection with: SWBubblePlot).
	diagram addSlider.
	
	diagram sliderMorph setScaledValue: 8.5.
	
	checkCollection := (diagram charts first dataPoints select: [:dataPoint| dataPoint height = 0]).
	self assert: (checkCollection size) equals: 2.
	
	checkCollection := (diagram charts second dataPoints select: [:dataPoint| dataPoint height = 0]).
	self assert: (checkCollection size) equals: 2.
	
	checkCollection := (diagram charts third dataPoints select: [:dataPoint| dataPoint height = 0]).
	self assert: (checkCollection size) equals: 3.
	
	