testing
testRemovePieSliceFromData

	| size |
	size := self pieChart data size.
	
	self assert: (self pieChart data contains: [:data | data x = 3 and: data y = 30]) .
	self pieChart data removeArray: #(3 30).
	self deny: (self pieChart data contains: [:data | data x = 3 and: data y = 30]).
	self assert: self pieChart data size = (size - 1) 