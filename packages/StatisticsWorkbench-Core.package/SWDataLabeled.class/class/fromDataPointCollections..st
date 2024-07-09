instance creation
fromDataPointCollections: aSequencableCollection
	
	| xValues yValues labels |
	xValues := aSequencableCollection collect: [:each | each first].
	yValues := aSequencableCollection collect: [:each | each second].
	labels := aSequencableCollection collect: [:each | each third].
	
	^ self fromXValues: xValues versusYValues: yValues withLabels: labels
