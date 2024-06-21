testing
testOnVisualizeButtonClicked

	| initialMorphCount newMorph |
	self mainformModel chart: 2 setSelected: true.
	initialMorphCount := World submorphs size.
	self mainformModel onVisualizeButtonClicked.
	newMorph := World submorphs detect: [:each | (each isKindOf: SystemWindow)] ifNone: [nil].
	self assert: (newMorph notNil).
	newMorph ifNotNil: [newMorph delete].
	self assert: (World submorphs size = initialMorphCount).
	