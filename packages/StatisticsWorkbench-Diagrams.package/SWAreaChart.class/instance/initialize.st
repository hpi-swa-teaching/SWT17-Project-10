as yet unclassified
initialize 

	super initialize.
	self 
		lineMorph: self createLineMorph;
		lineColor: self class defaultColor;
		dataPoints: OrderedCollection new;
		dataSuffix: ''