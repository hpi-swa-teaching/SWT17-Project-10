geometry
isLabelTooLong

	| charWidth textWidth |
	charWidth := self defaultCharWidth.
	textWidth := self barLabelMorph width.
	(textWidth = self minimumLabelWidth)
		ifTrue: [textWidth := self barLabelMorph text size * charWidth].
		
	^ textWidth > self width
