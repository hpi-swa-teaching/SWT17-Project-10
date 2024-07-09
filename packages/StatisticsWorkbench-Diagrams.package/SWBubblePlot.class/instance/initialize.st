as yet unclassified
initialize

	super initialize.
	self
		threshold: 0;
		pointColor: self class defaultColor;
		dataPoints: OrderedCollection new;
		maxValuesPerData: 1