testing
testCaptionMorph

	| axisLine |
	axisLine := SWAxisMarker create.
	axisLine caption: 'test'.
	self assert: axisLine captionMorph text equals: 'test'.
	
	axisLine caption: 'test2'.
	self assert: axisLine captionMorph text equals: 'test2'.
	
	axisLine textColor: Color red.
	self assert: Color red equals: axisLine captionMorph color.
	
	axisLine textColor: Color blue.
	self assert: Color blue equals: axisLine captionMorph color.
	
	axisLine delete