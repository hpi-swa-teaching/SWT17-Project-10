as yet unclassified
drawColorSwatchOf: aColor at: aPositionFactor

	| colorSwatch |
	colorSwatch := RectangleMorph new.
	
	self addColorSwatch: colorSwatch.
	self keyColors add: colorSwatch. 
	
	colorSwatch 
			color: aColor;
			position: self key position + (self class defaultMargin @ (aPositionFactor * self class defaultKeyPointHeight));
			extent: self class defaultColorSwatchExtent