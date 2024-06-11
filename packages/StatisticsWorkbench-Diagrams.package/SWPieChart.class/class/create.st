instance creation
create

	| newPieChart |
	
	newPieChart := SWPieChart new.
	newPieChart
		radius: self defaultRadius;
		extent: self defaultExtent;
		radiusScalingFactor: self defaultRadiusScalingFactor;
		bounds: ((0 @ 0) corner: self defaultWorldPosition + self defaultRadius).
	
	^ newPieChart
