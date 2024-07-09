testing
testAdd
	
	self data add: (SWVector fromPoint: 0 @ 0).
	self assert: self data size + 2 equals: self areaChart lineMorph vertices size
