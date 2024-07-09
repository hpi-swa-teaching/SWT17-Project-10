instance creation
processStringData: aCollection ofDataDimension: aDimension

	| newData values |
	values := aCollection collect: [:each | each asNumber].
	newData := SWDataUnlabeled create.
	values groupsOf: aDimension atATimeDo: [:date | newData add: date].

	^ newData
