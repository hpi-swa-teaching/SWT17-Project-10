testing
testRemove

	| vector |
	
	vector := SWVector newFrom: #(1 1).
	vector labelName: 'two'.
	self assert: self data size equals: self barChart bars size.
	self data remove: vector.
	self barChart update.
	self assert: self data size equals: self barChart bars size