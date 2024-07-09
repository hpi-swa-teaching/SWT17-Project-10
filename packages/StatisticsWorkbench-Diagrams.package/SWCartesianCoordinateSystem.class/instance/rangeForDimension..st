accessing
rangeForDimension: aDimension

	| range globalMax globalMin |
	(self diagram charts)
		ifEmpty: [^ SWAxisRange from: SWAxis defaultMin to: SWAxis defaultMax].
	
	globalMin := self diagram minimumOfAllChartsForDimension: aDimension.
	globalMax := self diagram maximumOfAllChartsForDimension: aDimension.
	range := SWAxisRange from: globalMin to: globalMax.
	range includeZero.
	
	(self centeredAxes)
		ifTrue: [range balanceExtent].
	
	^ range
