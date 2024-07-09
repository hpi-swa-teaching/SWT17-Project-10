testing
testRemoveBarFromData

	| size vector |
	vector := SWVector fromArray: #(3 1).
	vector labelName: 'four'.
	size := self barChart bars size.
	
	self assert: (self barChart data contains: [:data | data x = 3 and: data y = 1]) .
	self barChart data remove: vector.
	self barChart update.
	self deny: (self barChart data contains: [:data | data x = 3 and: data y = 1]).
	self assert: self barChart bars size = (size - 1) 