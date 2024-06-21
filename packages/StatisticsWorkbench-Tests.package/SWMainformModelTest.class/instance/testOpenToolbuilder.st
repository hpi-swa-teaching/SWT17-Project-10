testing
testOpenToolbuilder

	| ui |
	
	ui := SWMainformModel open.
	self assert: (ui isNil not).
	self assert: (World submorphs includes: ui).
	ui delete.