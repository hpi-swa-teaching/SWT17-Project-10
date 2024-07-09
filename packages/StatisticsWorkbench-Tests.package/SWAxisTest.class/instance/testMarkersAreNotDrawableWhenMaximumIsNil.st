testing
testMarkersAreNotDrawableWhenMaximumIsNil

	| axis |
	axis := SWAxis create.
	self should: [axis maximum: nil] raise: SWInvalidArgumentError
