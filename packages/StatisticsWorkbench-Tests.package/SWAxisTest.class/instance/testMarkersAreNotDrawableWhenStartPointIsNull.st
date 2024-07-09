testing
testMarkersAreNotDrawableWhenStartPointIsNull

	| axis |
	axis := SWAxis create.
	self should: [axis startPoint: nil] raise: SWInvalidArgumentError
