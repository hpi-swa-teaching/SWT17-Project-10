testing
testRemove
	
	self assert: self data size equals: self barChart bars size.
	self data removeArray: #(1 1).
	self assert: self data size equals: self barChart bars size