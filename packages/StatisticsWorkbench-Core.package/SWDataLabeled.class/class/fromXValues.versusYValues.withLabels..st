instance creation
fromXValues: xValues versusYValues: yValues withLabels: labels

	| data |
	(xValues size = labels size)
		ifFalse: [ SWInvalidArgumentError signal: 'Collections must be same size' ].
	data := self fromXValues: xValues versusYValues: yValues.
	data setLabels: labels.

	^ data
