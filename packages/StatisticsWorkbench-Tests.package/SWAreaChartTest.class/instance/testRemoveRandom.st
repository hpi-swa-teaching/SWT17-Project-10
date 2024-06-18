testing
testRemoveRandom
	
	| initialSize |
	
	initialSize := self data size + 2.
	
	self assert: [self areaChart lineMorph vertices size = initialSize].
	self data remove: (self data atRandom).
	self assert: [self areaChart lineMorph vertices size = initialSize]
