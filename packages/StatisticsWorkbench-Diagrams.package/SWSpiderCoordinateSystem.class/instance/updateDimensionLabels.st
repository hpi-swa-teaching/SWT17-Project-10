updating
updateDimensionLabels

	| dimensionLabels |
	dimensionLabels := self dimensionNames.
	1 to: self dimensions do: [:each | self createLabel: (dimensionLabels at: each) forDimension: each]