testing
testSetInvalidStepInterval

	| axis |
	axis := SWAxis create.
	
	self should: [axis stepInterval: nil] raise: SWInvalidArgumentError.
	self should: [axis stepInterval: 0] raise: SWInvalidArgumentError.
	self should: [axis stepInterval: -1] raise: SWInvalidArgumentError
