visualization
adjust: aTextMorph to: aMorph

	| maxWidth |
	maxWidth := {(aTextMorph left - aMorph right) abs . (aTextMorph right - aMorph left) abs} min.
	(maxWidth < aTextMorph width)
		ifTrue: [aTextMorph extent: maxWidth @ aTextMorph height]
	

	