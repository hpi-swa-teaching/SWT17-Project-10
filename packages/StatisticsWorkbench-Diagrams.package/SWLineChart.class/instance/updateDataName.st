visualization
updateDataName

	(self dataName notNil and: self dataNameMorph isNil)
		ifTrue: [self createDataNameMorph].

	(self dataNameMorph notNil)
		ifTrue: [self updateDataNameMorph]
