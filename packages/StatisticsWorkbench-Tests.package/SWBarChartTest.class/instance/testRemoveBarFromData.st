testing
testRemoveBarFromData

	| size |
	
	size := self barChart bars size.
	self assert: (self barChart data contains: [:data | data x = 3 and: data y = 0]) .
	self barChart data removeArray: #(3 0).
	self deny: (self barChart data contains: [:data | data x = 3 and: data y = 0]).
	self assert: self barChart bars size = (size - 1) 