instance creation
fromString: aString ofDataDimension: aDimension

	| segments dimensionNames values newData |
	segments := aString findTokens: String cr, String tab, ' |()[]{},@#=&'.
	(segments size < 4) 
		ifTrue: [SWInvalidArgumentError signal: 'Creation of Datasets needs at least two axis names and two values.'].
		
	dimensionNames := segments copyFrom: 1 to: aDimension.
	values := segments copyFrom: aDimension + 1 to: segments size.
	
	newData := self processStringData: values ofDataDimension: aDimension. 
	newData setAllDimensionNames: dimensionNames.

	^ newData
