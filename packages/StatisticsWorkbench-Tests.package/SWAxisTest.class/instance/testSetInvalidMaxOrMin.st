testing
testSetInvalidMaxOrMin

	| axis |
	axis := SWAxis create.
	
	axis minimum: 0.
	self should: [axis maximum: 0] raise: SWInvalidArgumentError.
	self should: [axis maximum: -1] raise: SWInvalidArgumentError.
	
	axis minimum: -10.
	axis maximum: 0.
	self should: [axis minimum: 0] raise: SWInvalidArgumentError.
	self should: [axis minimum: 1] raise: SWInvalidArgumentError