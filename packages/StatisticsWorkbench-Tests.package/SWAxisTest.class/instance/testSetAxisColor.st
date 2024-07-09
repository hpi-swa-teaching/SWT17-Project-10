testing
testSetAxisColor

	| axis color |
	axis := SWAxis create.
	color := Color wheel: 2.
	
	axis color: (color first).
	self assert: (color first) equals: axis borderColor.
	axis markers do: [:marker | self assert: (color first) equals: marker strokeMorph borderColor].
	
	axis color: (color second).
	self assert: (color second) equals: axis borderColor.
	axis markers do: [:marker | self assert: (color second) equals: marker strokeMorph borderColor].
	
	axis delete