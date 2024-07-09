creation
generateOuterBorderFromStartPoint: aPoint withValue: aValue
	
	| borderPoints |
	borderPoints := OrderedCollection new.
	0 to: (self computeRadianFrom: aValue) by: 0.1 do: [:x | 
		borderPoints add: (aPoint rotateBy: x about: self center)].
	
	^ borderPoints
