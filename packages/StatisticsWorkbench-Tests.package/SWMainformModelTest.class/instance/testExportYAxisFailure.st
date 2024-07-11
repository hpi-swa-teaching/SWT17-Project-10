testing
testExportYAxisFailure

	| hasErrorOccurred |
	hasErrorOccurred := false.
	self mainformModel chart: 3 setSelected: true.
	[self mainformModel showYAxisPopup] valueSupplyingAnswer: '1, 2, 3'.
	[[self mainformModel onExportImageButtonClicked] on: Error do: [:ex | hasErrorOccurred := true]].
	self assert: hasErrorOccurred not.