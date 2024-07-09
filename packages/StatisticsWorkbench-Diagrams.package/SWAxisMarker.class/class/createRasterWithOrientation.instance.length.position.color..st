instance creation
createRasterWithOrientation: anOrientation instance: instance length: aLength position: aPosition color: aColor

	| endPosition morph |
	(anOrientation = #horizontal)
		ifTrue: [endPosition := aPosition + (aLength @ 0)]
		ifFalse: [endPosition := aPosition - (0 @ aLength)].
				
	morph := (LineMorph
		from: aPosition
		to: endPosition
		color: SWAxisMarker defaultRasterColor
		width: SWAxisMarker defaultRasterWidth).
	
	instance
		rasterMorph: morph;
		rasterColor: aColor;
		addMorph: instance rasterMorph behind: instance strokeMorph