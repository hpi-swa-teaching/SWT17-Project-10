as yet unclassified
initialize

	super initialize.
	self threshold: 0.
	self pointColor: self class defaultColor.
	self dataPoints: OrderedCollection new
