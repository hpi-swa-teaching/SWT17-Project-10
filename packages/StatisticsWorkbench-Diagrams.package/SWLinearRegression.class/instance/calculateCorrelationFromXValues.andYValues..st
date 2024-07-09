calculation
calculateCorrelationFromXValues: xValues andYValues: yValues

	| meanX standardDeviationX meanY standardDeviationY sum |
	meanX := self calculateMean: xValues.
	meanY := self calculateMean: yValues.
	standardDeviationX := self calculateStandardDeviation: xValues.
	standardDeviationY := self calculateStandardDeviation: yValues.
	(standardDeviationX = 0 and: standardDeviationY = 0)
		ifTrue: [^ 0].
	
	sum := 0.
	(1 to: xValues size)
		do: [:i | 
			| demeanX demeanY |
			demeanX := (xValues at: i) - meanX.
			demeanY := (yValues at: i) - meanY.
			sum := sum + (demeanX * demeanY)].
	sum := sum / (standardDeviationX * standardDeviationY).
	
	^ sum / (xValues size)