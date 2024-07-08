initialization
initialize

	super initialize.
	self barColor: self class defaultColor.
	self barLabelColor: self class defaultBarLabelColor.
	self bars: OrderedCollection new.
	self hasBottomCaption: false.
