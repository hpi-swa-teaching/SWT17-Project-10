as yet unclassified
testIdentity

	| vector1 vector2 vector3 vector4 |
	vector1 := SWVector create: #(0 0).
	vector2 := SWVector create: #(0 1).
	vector3 := SWVector create: #(1 1).
	vector4 := SWVector create: #(1 2 3).
	
	self assert: [ (vector1 == vector2) not ].
	self assert: [ (vector1 == vector3) not ].
	self assert: [ (vector2 == vector3) not ].
	
	self assert: [ vector1 == vector1 ].
	self assert: [ vector2 == vector2 ].
	self assert: [ vector3 == vector3 ].
	
	self flag: #fishy.
	" @Julius: Einfach false oder Exception? Entscheide du!"
	self assert: [ (vector1 == vector4) not ]	