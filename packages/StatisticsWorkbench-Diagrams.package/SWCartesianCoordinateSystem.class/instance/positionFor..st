geometry
positionFor: aPoint
	
	| origin relativeOffset |
	origin := ((self startPoint x - self minimumOffsetX) @ (self startPoint y + self minimumOffsetY)).
	relativeOffset := ((self xAxis positionForValue: aPoint x) @ ((self yAxis positionForValue: aPoint y) negated)).
	
	^ origin + relativeOffset