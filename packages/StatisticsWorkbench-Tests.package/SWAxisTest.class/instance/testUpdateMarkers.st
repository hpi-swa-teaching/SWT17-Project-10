testing
testUpdateMarkers

	| axis |
	axis := SWAxis create.
	self assert: (axis markers size) equals: (axis length / axis stepInterval) ceiling.
	
	axis stepInterval: 10.
	self assert: (axis markers size) equals: (axis length / axis stepInterval) ceiling.
	
	axis stepInterval: 100.
	self assert: (axis markers size) equals: (axis length / axis stepInterval) ceiling
