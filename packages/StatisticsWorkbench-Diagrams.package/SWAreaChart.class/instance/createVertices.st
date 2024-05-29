as yet unclassified
createVertices

	| modifiedData |
	
	modifiedData := SWData create.
	modifiedData
		addVector: (SWVector fromPoint: (self data first x @ 0));
		addMany: self data;
		addVector: (SWVector fromPoint: (self data last x @ 0)).
	
	^ modifiedData collect: [:vector | self coordinateSystem positionFor: vector asPoint]
	
