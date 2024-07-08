accessing
bottomCaption: aString

	| bottomTextMorph labelMorph |
		
	bottomTextMorph := TextMorph new.
	bottomTextMorph
		contents: aString;
		color: self captionColor.
	labelMorph :=  TransformationMorph new.
	labelMorph
		addMorph: bottomTextMorph;
		angle: (0.25 * (Float pi));
		topRight: self bottomCenter.
	self
		addMorph: labelMorph;
		bottomLabelMorph: labelMorph