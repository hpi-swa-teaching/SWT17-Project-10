testing
testToggleRaster	
	
	| visibility1 |
	visibility1 := self coordinateSystem xAxis rasterVisibility.
	self coordinateSystem toggleRaster.
	self deny: visibility1 = self coordinateSystem xAxis rasterVisibility
