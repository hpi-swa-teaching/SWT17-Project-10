comparing
< anotherSWVector
	
	anotherSWVector ifNil: [^ false].
	
	(self dimensions = anotherSWVector dimensions)
		ifFalse: [SWInvalidDimensionError signal: 'You must compare equal sized vectors.'].

	1 to: self dimensions do: [ :index |
			(self at: index) > (anotherSWVector at: index)
				ifTrue: [^ false].
			(self at: index) < (anotherSWVector at: index)
				ifTrue: [^ true]].

	^ false