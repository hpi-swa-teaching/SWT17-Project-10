private statistics
differenceQuotientOf: aDimension between: xValue and: anotherXValue

	| dimensionIndex |
	dimensionIndex := self dimensionIndex: aDimension.

	^ (self substract: anotherXValue and: xValue with: dimensionIndex) / (self substract: anotherXValue and: xValue with: 1)
