testing
testMarkersAreNotDrawableWhenStepIntervalIsNegative

	| axis |
	axis := SWAxis create.
	self should: [axis stepInterval: -1] raise: SWInvalidArgumentError
