converting
balanceExtent
	
	(self first abs < self last abs)
		ifTrue: [self setFrom: self last negated to: self last by: 1].
	self setFrom: self first to: self first negated by: 1