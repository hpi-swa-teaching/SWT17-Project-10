instance creation
fromXValues: xValues versusYValues: yValues

	(xValues size = yValues size)
		ifFalse: [ SWInvalidArgumentError signal: 'Collections must be same size'].

	^ self processDatafromXValues: xValues versusYValues: yValues
