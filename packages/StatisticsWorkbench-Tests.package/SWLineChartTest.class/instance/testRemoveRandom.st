testing
testRemoveRandom
	
	| initialSize |
	initialSize := self data size.
	
	self assert: [self lineChart lineMorph vertices size = initialSize].
	self data remove: (self data atRandom).
	self assert: [self lineChart lineMorph vertices size = initialSize]
