initialization
initialize

	super initialize.
	self barColor: self defaultColor.
	self barLabelColor: self class defaultBarLabelColor.
	self bars: OrderedCollection new
