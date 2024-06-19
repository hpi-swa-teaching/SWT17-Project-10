testing
testAsPoint

	self assert: 0 equals: self vector1 asPoint x.
	self assert: 0 equals: self vector1 asPoint y.
	self assert: self vector1 asPoint isPoint.
	self assert: self vector2 asPoint isPoint.
	
	self should: [self vector4 asPoint] raise: SWInvalidDimensionError
