accessing
topCaption: aString

	self barLabelMorph: TextMorph new.
	self barLabelMorph center: self barLabelMorph center + self defaultLabelOffset.

	self rotationMorph: TransformationMorph new.
	self rotationMorph addMorph: self barLabelMorph.
	self addMorph: self rotationMorph.

	self barLabelMorph contents: aString.
	self barLabelMorph color: self captionColor.

	self rotationMorph topLeft: self topLeft.
	
	(self isLabelHorizontal and: self isLabelTooLong) 
		ifTrue: [self rotateLabel].
	(self isLabelHorizontal and: self isTextHigherThanBar) 
		ifTrue: [self raiseBarLabel]