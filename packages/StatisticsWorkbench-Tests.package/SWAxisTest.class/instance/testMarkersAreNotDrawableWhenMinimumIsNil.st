testing
testMarkersAreNotDrawableWhenMinimumIsNil

	| axis |
	axis := SWAxis create.
	self should: [axis minimum: nil] raise: SWInvalidArgumentError
