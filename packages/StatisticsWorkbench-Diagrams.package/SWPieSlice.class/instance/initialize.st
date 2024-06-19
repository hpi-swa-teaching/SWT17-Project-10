initialization
initialize
	 
	super initialize.
	
	self 
		slice: SWPieSlicePolygon new;
		color: Color transparent.
	
	self addMorph: self slice
