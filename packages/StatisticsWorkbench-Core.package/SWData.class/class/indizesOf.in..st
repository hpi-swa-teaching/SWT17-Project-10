categorized-data
indizesOf: anElement in: aCollection 
	
	| indizes |
	indizes := OrderedCollection new.
	1 to: aCollection size do: [:index |
		((aCollection at: index) = anElement)
			ifTrue: [indizes add: index]].

	^ indizes