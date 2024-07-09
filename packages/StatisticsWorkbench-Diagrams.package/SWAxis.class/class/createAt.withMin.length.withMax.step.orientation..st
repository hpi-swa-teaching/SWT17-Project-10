instance creation
createAt: startPoint withMin: min length: length withMax: max step: step orientation: orientation

	| endPoint vertices |
	(orientation = #horizontal)
		ifTrue: [endPoint := startPoint + (length @ 0)]
		ifFalse: [endPoint := startPoint + (0 @ (length negated))].
	
	vertices := Array with: startPoint with: endPoint.
	
	^ (SWAxis vertices: vertices color: self defaultColor borderWidth: self defaultBorderWidth borderColor: self defaultBorderColor)
			textVisibility: self defaultTextVisibility;
			rasterVisibility: self defaultRasterVisibility;
			orientation: orientation;
			minimum: min;
			maximum: max;
			stepInterval: step;
			makeForwardArrow;
			updateMarkers;
			yourself