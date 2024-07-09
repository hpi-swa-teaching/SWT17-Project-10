accessing
startPoint

	^ (self bounds origin x + (self boundsThreshold x / 2)) @ (self bounds corner y - (self boundsThreshold y / 2))
