updating
updateRanges
	
	| rangeX rangeY |
	rangeX := self rangeForDimension: #x.
	rangeY := self rangeForDimension: #y.
	
	self updateMinX: rangeX min minY: rangeY min.
	self updateMaxX:  rangeX max maxY: rangeY max