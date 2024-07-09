reading
getNamedColumns: aStream
	
	| lines matrix|
	(aStream atEnd)
		ifTrue: [^ Dictionary new].
	lines := self readAllLines: aStream.
	matrix := self tokenize: lines delimeter: self delimiter escapeWith: self escapeCharacter.

	^ self namedColumnsFromMatrix: matrix