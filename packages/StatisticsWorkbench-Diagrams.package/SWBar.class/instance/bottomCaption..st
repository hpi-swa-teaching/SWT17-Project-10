accessing
bottomCaption: aString

	| bottomTextMorph |
		
	bottomTextMorph := TextMorph new.
	bottomTextMorph contents: aString.
	bottomTextMorph color: self captionColor.
	self bottomLabelMorph: TransformationMorph new.
	self bottomLabelMorph addMorph: bottomTextMorph.
	self bottomLabelMorph angle: (0.25 * (Float pi)).
	self bottomLabelMorph topRight: self bottomCenter.
	self addMorph: self bottomLabelMorph.