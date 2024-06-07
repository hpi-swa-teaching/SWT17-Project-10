as yet unclassified
initialize 

	super initialize.
	self lineMorph: self createLineMorph;
		lineColor: self defaultColor;
		dataPoints: OrderedCollection new