updating
update: anObject

	(anObject class superclass = SWData)
		ifTrue: [self update]
