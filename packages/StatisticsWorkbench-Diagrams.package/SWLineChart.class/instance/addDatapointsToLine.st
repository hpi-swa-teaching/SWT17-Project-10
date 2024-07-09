updating
addDatapointsToLine
	
	| dataPoint |
	self removeAllDatapoints.
	1 to: self data size do: [:index  |
		dataPoint := SWDataPoint create: (self data at: index) at: (self vertices at: index).
		dataPoint color: Color transparent;
			position: dataPoint renderedPoint.
		self dataPoints add: dataPoint.
		self addMorph: dataPoint]