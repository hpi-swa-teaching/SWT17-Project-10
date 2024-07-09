testing
testStrokeMorph

	| axisLine |
	axisLine := SWAxisMarker create.
	
	self assert: axisLine strokeMorph notNil.
	self assert: 10 equals: axisLine strokeMorph totalLength.
	
	axisLine strokeColor: Color red.
	self assert: Color red equals: axisLine strokeMorph borderColor.
	
	axisLine strokeColor: Color blue.
	self assert: Color blue equals: axisLine strokeMorph borderColor.
	
	axisLine delete