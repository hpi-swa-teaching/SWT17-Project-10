visualization
insertLegend

	| key |
	key := SWKey create. 			
	self legend: key.
	self legend topLeft: self topRight.
	self legend key topLeft: self topRight.
	self addMorph: key