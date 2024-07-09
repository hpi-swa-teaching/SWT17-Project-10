accessing
indexOfAxis: aSymbol

	| index |
	[index := self dimensionIndices at: aSymbol] on: Error do: [SWInvalidDimensionError signal: 'Symbols are only supported for up to 3 dimensions (x,y,z).'].

	^ index
