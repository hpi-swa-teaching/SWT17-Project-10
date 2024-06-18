testing
testRemoveAll

	self areaChart removeAll. 
	self assert: self areaChart vertices isEmpty
