updating
updateRasterSize

	self xAxis rasterLength: self yAxis length.
	self yAxis rasterLength: self xAxis length.
	
	Transcript show: self xAxis rasterLength; cr.
	Transcript show: self yAxis rasterLength; cr.
