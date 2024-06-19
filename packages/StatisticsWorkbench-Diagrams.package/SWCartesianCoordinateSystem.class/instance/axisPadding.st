geometry
axisPadding

	| paddedMaximumX paddedMaximumY paddingFactorX paddingFactorY|
	
	paddingFactorX := self class defaultAxisValuePaddingFactor.	
	paddingFactorY := (percentageBased) ifTrue: 1.0 ifFalse: self class defaultAxisValuePaddingFactor.	
	paddedMaximumX := (self xAxis maximum * paddingFactorX) ceiling.
	paddedMaximumY := ( self yAxis maximum * paddingFactorY) ceiling.

	self xAxis maximum: paddedMaximumX.
	self yAxis maximum: paddedMaximumY
