testing
testEquality

	| data1 data2 data3 |
	data1 := self data.
	data2 := self data copy.
	data2 add: #(5 5).
	data3 := self data copy.
	
	self assert: data1 equals: data1.
	self assert: data2 equals: data2.
	self assert: data3 equals: data3.
	self assert: data1 equals: data3.
	
	self deny: data1 = data2