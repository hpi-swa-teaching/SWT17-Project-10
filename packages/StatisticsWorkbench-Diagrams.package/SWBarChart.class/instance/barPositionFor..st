accessing
barPositionFor: xValue
	
	^ (self coordinateSystem positionFor: xValue @ 0) x + (self barWidth / 2)
