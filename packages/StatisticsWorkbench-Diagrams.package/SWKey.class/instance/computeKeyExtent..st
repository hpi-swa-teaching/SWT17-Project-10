accessing
computeKeyExtent: aDictionary

	| width height maxNameWidth |
	maxNameWidth := (self keyNames collect: [:name | name width]) max.
	
	"3 because the margin is on the left of the colored box, between the box and the text and on the right of the text." 
	width := maxNameWidth + self class defaultColorSwatchWidth + (3 * self class defaultMargin).
	height := aDictionary size * self class defaultKeyPointHeight + self class defaultMargin.
		
	^ (width @ height)