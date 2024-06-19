testing
testAddAndRemove
	
	| newVertex |
	newVertex := SWVector create: #(42 42).
	self lineChart add: newVertex.
	self assert: self data size + 1 equals: self lineChart vertices size.
	self lineChart remove: newVertex asPoint.
	self assert: self data size equals: self lineChart vertices size.