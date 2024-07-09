instance creation
createMarker: anOrientation instance: instance position: aPosition textColor: aColor1 strokeColor: aColor2 text: aText

	| captionPosition markerEndPosition markerStartPosition |
	(anOrientation = #horizontal)
		ifTrue: [markerStartPosition := (aPosition x - (SWAxisMarker defaultMarkerLength / 2)) @ aPosition y.
				markerEndPosition := (aPosition x + (SWAxisMarker defaultMarkerLength / 2)) @ aPosition y.
				captionPosition := (aPosition x - SWAxisMarker defaultCaptionMorphXShiftYAxis) @ (aPosition y - (SWAxisMarker defaultCaptionMorphWidth / 2))]
		ifFalse: [markerStartPosition := aPosition x @ (aPosition y - (SWAxisMarker defaultMarkerLength / 2)).
				markerEndPosition := aPosition x @ (aPosition y + (SWAxisMarker defaultMarkerLength / 2)).
				captionPosition := (aPosition x - SWAxisMarker defaultCaptionMorphXShiftXAxis) @ (aPosition y + SWAxisMarker defaultCaptionMorphYShiftXAxis)].
	
	instance
		strokeMorph: (LineMorph from: markerStartPosition to: markerEndPosition color: aColor2 width: SWAxisMarker defaultMarkerWidth);
		captionMorph: (TextMorph new
							contents: aText;
							position: captionPosition);
		textColor: aColor1;
		strokeColor: aColor2;
		addMorph: instance strokeMorph;
		addMorph: instance captionMorph