instance creation
fromNamedColumns: aDictionary xValues: aString yValues: aString2

	| xValues yValues data|
	
	xValues := (aDictionary at: aString) collect: [:each | each asInteger].
	yValues := (aDictionary at: aString2) collect: [:each | each asInteger].
		
	data := self fromXValues: xValues versusYValues: yValues withLabels: (aDictionary at: #Labels).
	
	data enrichWith: aDictionary.

	data setAllDimensionNames: {aString value. aString2 value}.
	^data 