creation
createMarkerAtIndex: aIndex

	| markerOrientation shortenedNumber | 
			
	(self orientation = #horizontal)
		ifTrue: [markerOrientation := #vertical]
		ifFalse: [markerOrientation := #horizontal].
	 
	shortenedNumber := SWNumberShortener new shortenNumber: (self minimum + (aIndex * self stepInterval)).

	^ SWAxisMarker
			create: (self newMarkerPosition: aIndex)
			orientation: markerOrientation
			caption: (shortenedNumber, markerSuffix)
			textColor: self textColor
			strokeColor: self borderColor
			raster: (self rasterVisibility and: [self hasRasterLength and: [aIndex ~= 0]])
			length: self rasterLength
