testing
testSetAxisTextColor

	| axis color |
	axis := SWAxis create.
	color := Color wheel: 2.
	
	axis textColor: (color first).
	axis markers do: [:marker | self assert: (color first) equals: marker captionMorph color].
	
	axis textColor: (color second).
	axis markers do: [:marker | self assert: (color second) equals: marker captionMorph color].
	
	axis textVisibility: false.
	axis markers do: [:marker | self assert: Color transparent equals: marker captionMorph color].
	
	axis textVisibility: true.
	axis submorphsDo: [:morph | self assert: (color second) equals: morph captionMorph color].
	
	axis delete