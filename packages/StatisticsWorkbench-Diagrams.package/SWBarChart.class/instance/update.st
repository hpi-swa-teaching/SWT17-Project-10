updating
update
	
	self applyTheme: self diagram colorTheme.
	self diagram updateCoordinateSystem.
	self removeAll;
		createBarsFrom: self data
