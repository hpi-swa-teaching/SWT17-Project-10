geometry
maxBarWidth

	| calculatedMaxBarWidth minimumBarGap |
	minimumBarGap := ((self data allDifferences: #x) reject: [:each | each = 0]) min.
	calculatedMaxBarWidth := (self coordinateSystem xAxis normedMarkerLength) * minimumBarGap * self class maximumSizeFactor.

	^ calculatedMaxBarWidth
