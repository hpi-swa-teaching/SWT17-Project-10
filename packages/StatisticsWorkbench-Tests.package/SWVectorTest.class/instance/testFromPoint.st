testing
testFromPoint

	self assert: (SWVector create: #(0 0)) equals: (SWVector fromPoint: (0 @ 0)).
	self assert: (SWVector create: #(5 1)) equals: (SWVector fromPoint: (5 @ 1))