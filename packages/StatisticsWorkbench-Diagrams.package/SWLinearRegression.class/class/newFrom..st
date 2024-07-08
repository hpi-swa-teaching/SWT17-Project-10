as yet unclassified
newFrom: aScatterPlot

	| data xValues yValues |
	
	data := aScatterPlot data.
	xValues := OrderedCollection new.
	yValues := OrderedCollection new.
	data
		do: [:each | 
			xValues add: each x.
			yValues add: each y].
	^ self newFromXValues: xValues andYValues: yValues
