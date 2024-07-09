instance creation
fromXValues: xValues versusYValues: yValues versusZValues: zValues

	(xValues size = yValues size and: yValues size  = zValues size)
		ifFalse: [ SWInvalidArgumentError signal: 'Collections must be same size'].

	^ self processDatafromXValues: xValues versusYValues: yValues versusZValues: zValues
