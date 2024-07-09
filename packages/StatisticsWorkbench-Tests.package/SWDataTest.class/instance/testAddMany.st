testing
testAddMany

	| extraData |
	extraData := OrderedCollection new.
	extraData add: (SWVector fromArray: #(5 5)).
	extraData add: #(15 20).
	extraData add: (20 @ 35).
	self data addMany: extraData.
	
	self assert: (self originalDataSize + 3) equals: self data size
