testing
testMarkersAreDrawable

	| axis |
	axis := SWAxis create.
	self assert: axis areMarkersDrawable
