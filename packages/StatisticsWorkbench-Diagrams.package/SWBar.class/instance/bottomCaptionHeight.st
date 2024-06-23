accessing
bottomCaptionHeight

	| height |
	
	height := 0.
	self bottomLabelMorph ifNotNil: [height := self bottomLabelMorph height].
	
	^ height