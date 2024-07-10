visualization
drawSpiderNet
	
	1 to: self class defaultNumberOfCircularLines do: [:each |
		self drawCircularLineForValue: each * self class valuePerCircularLine].
	1 to: self dimensions do: [:dimension |
		self addAxisForDimension: dimension]