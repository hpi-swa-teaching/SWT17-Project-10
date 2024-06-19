initialization
initialize
	 
	super initialize.
	
	self 
		slice: SWPieSlicePolygon new;
		color: Color transparent;
		addMorph: self slice
