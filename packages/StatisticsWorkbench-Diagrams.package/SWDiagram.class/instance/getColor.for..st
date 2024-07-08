visualization
getColor: aCollection for: aChart

	| index |
	
	index := self charts indexOf: aChart ifAbsent: 1.
	aCollection size >= index 
		ifTrue: [^ aCollection at: index] 
		ifFalse: [^ (Color wheel: self charts size) at: index]