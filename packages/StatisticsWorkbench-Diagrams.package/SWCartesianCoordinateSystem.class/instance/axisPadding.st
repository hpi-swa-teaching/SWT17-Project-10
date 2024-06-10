geometry
axisPadding

	| paddedMaximumX paddedMaximumY paddingFactor|
	
	paddingFactor := (percentageBased) ifTrue: 1.0 ifFalse: self class defaultAxisValuePaddingFactor.	
	paddedMaximumX := (self xAxis maximum * paddingFactor) ceiling.
	paddedMaximumY := ( self yAxis maximum * paddingFactor) ceiling.

	self xAxis maximum: paddedMaximumX.
	self yAxis maximum: paddedMaximumY
