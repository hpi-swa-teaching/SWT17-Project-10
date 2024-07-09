math functions
allDifferences: aDimension

	| xValues differences |
	differences := OrderedCollection new.
	xValues := (self selectDimension: aDimension) copy sort.
	1 to: xValues size - 1 do: [:index | 
		differences add: ((xValues at: index + 1) - (xValues at: index))].
	(xValues size = 1)
		ifTrue: [differences add: (xValues first) * 2].

	^ differences
