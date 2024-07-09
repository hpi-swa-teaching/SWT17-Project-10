testing
testHash

	| vector1 vector2 |
	vector1 := SWVector create: #(0 123 456).
	vector2 := SWVector create: #(0 123 456).
	vector1 labelName: 'testingHashing'.
	vector2 labelName: 'testingHashing'.
	
	self assert: vector1 hash equals: vector2 hash.
	self deny: vector1 hash = self vector3 hash