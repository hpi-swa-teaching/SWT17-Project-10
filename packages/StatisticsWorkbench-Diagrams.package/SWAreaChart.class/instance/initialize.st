as yet unclassified
initialize 
	counter := 0.
	super initialize.
	self 
		lineColor: self class defaultColor;
		dataPoints: OrderedCollection new;
		dataSuffix: ''