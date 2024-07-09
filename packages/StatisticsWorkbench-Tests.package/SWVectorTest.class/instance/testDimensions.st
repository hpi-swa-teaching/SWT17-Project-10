testing
testDimensions

	| vector5 |
	vector5 := SWVector create: #(1 2 3 4).
	
	self assert: 2 equals: self vector1 dimensions.
	self assert: 3 equals: self vector4 dimensions.
	self assert: 4 equals: vector5 dimensions