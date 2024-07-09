updating
updateSlice
	
	self
		slice 
		setVertices: ({self centerPoint}, self edgePoints);
		makeClosed.
	self addValueLabel: self value asString

