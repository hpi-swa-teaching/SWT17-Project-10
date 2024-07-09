testing
testFiltering
	
	| checkCollection |
	self diagram addSlider.	
	self assert: (self diagram sliderMorph isKindOf: SimpleSliderMorph).
	self assert: (self diagram sliderValueMorph contents = (Text fromString: '20.0')).
	self diagram sliderMorph setScaledValue: 8.5.
	self assert: (self diagram sliderValueMorph contents = (Text fromString: '8.5')).
	
	checkCollection := (self diagram charts first dataPoints select: [:dataPoint| dataPoint height = 0]).
	self assert: (checkCollection size) equals: 2.
	
	checkCollection := (self diagram charts second dataPoints select: [:dataPoint| dataPoint height = 0]).
	self assert: (checkCollection size) equals: 2.
	
	checkCollection := (self diagram charts third dataPoints select: [:dataPoint| dataPoint height = 0]).
	self assert: (checkCollection size) equals: 3.