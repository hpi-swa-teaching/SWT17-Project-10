as yet unclassified
drawKeyPointOf: aString at: aPositionFactor
	
	| keyPoint |
	keyPoint := TextMorph new.
	keyPoint color: self textColor.
	
	self addKeyPoint: keyPoint.
	self keyNames add: keyPoint.
	
	keyPoint 
		contents: aString asString;
		position: self key position + (self class defaultKeyTextMargin @ (aPositionFactor * self class defaultKeyPointHeight))