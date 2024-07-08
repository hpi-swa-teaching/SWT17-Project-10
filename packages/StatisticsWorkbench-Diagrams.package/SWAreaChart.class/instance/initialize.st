as yet unclassified
initialize 

	super initialize.
	self
		lineColor: self class defaultColor;
		dataPoints: OrderedCollection new;
		dataSuffix: ''