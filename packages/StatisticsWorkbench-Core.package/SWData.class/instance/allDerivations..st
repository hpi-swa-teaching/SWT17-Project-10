private statistics
allDerivations: aDimension

	| xValues derivations |
	derivations := OrderedCollection new.
	xValues := (self selectDimension: #x) copy sort.
	1 to: xValues size - 1 do: [:index | 
		derivations add: (self differenceQuotientOf: aDimension between: (xValues at: index) and: (xValues at: index + 1))].

	^ derivations
