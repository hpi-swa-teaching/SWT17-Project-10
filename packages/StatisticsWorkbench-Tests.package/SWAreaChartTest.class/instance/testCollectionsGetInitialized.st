testing
testCollectionsGetInitialized 

	self assert: (self areaChart vertices notNil and: [self areaChart vertices size = (self data size + 2)])
