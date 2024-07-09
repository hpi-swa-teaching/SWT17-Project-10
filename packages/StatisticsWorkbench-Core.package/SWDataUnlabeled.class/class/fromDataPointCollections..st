instance creation
fromDataPointCollections: aSequencableCollection

	| xValues yValues |
	xValues := aSequencableCollection collect: [:each | each first].
	yValues := aSequencableCollection collect: [:each | each second].

	^ self processDatafromXValues: xValues versusYValues: yValues
