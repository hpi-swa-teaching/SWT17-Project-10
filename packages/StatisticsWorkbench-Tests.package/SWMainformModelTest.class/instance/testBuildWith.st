testing
testBuildWith

	|builder windowSpec|
	
	builder := ToolBuilder default.
	windowSpec := SWMainformModel buildWith: builder.
	builder open: windowSpec.
	self assert: (windowSpec isNil not).
	self assert: (World submorphs includes: windowSpec).
	windowSpec delete.