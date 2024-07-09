instance creation
processStringData: aCollection ofDataDimension: aDimension

	| newData date |
	newData := SWDataLabeled create.
	aCollection groupsOf: (aDimension + 1) atATimeDo: [:group | 
		date := SWVector fromArray: (group allButFirst collect: [:each | each asNumber]).
		date labelName: group first.
		newData add: date].

	^ newData
