accessing
endPoint: aPoint
	
	(aPoint isNil)
		ifTrue: [SWInvalidArgumentError signal: 'End point must be set.'].

	self vertices at: 2 put: aPoint.
	self
		computeBounds;
		update