as yet unclassified
testOnExportImageButtonClicked

	| hasErrorOccurred |
	
	hasErrorOccurred := false.
	[self mainformModel onExportImageButtonClicked] on: Error do: [:ex | hasErrorOccurred := true].
	self assert: hasErrorOccurred not.