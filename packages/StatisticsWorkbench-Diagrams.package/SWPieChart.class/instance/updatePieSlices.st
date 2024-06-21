updating
updatePieSlices

	| position wheelColors |
	
	position := 1.
	wheelColors := Color wheel: self data size.
	self removeAllPieSlices;
		radius: self dynamicRadius;
		center: (diagram center x - keyWidth @ diagram center y).
	self data do: [:vector | 
		self createPieSliceFrom: vector at: position colored: (
		position < self colorArray size
			ifTrue: [self colorArray at: position] 
			ifFalse: [wheelColors at: position]).
		position := position + 1]
