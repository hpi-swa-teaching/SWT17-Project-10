testing
testExportFileChooser

	| openWindowsCountStart openWindowsCountEnd |
	openWindowsCountStart := (World submorphs select: [:morph |
		morph isKindOf: SystemWindow]) size.
	self mainformModel chart: 1 setSelected: true.
	[self mainformModel onExportImageButtonClicked.
	openWindowsCountEnd := (World submorphs select: [:morph |
		morph isKindOf: SystemWindow]) size.
	self assert: openWindowsCountEnd equals: openWindowsCountStart + 1]