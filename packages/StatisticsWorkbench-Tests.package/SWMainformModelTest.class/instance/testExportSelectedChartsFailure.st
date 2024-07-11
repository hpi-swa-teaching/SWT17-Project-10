testing
testExportSelectedChartsFailure

	| hasErrorOccurred |
	hasErrorOccurred := false.
	[[self mainformModel onExportImageButtonClicked] on: Error do: [:ex | hasErrorOccurred := true]].
	self assert: hasErrorOccurred not.