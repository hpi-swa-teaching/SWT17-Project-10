accessing
atXValue: aXValue

	| index |
	(self isFunction)
		ifFalse: [SWDataIsNotUnambigious signal: 'Some x values have multiple occurrences.'].
	index := (self selectDimension: #x) indexOf: aXValue.
	(index = 0)
		ifTrue: [SWxValueNotFound signal: 'No data for the requested x value available.'].

	^ self at: index
