testing
testGreater
	
	self deny: self vector1 > self vector2.
	self deny: self vector1 > self vector3.
	self deny: self vector2 > self vector3.
	self deny: self vector1 > self vector1.
	
	self assert: self vector3 > self vector1.
	self assert: self vector3 > self vector2.
	self assert: self vector2 > self vector1