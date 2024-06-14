as yet unclassified
testLightThemeSelection
	self mainformModel updateTheme: SWDefaultTheme.
	self assert: self mainformModel selectedTheme = SWDefaultTheme.
	self assert: self mainformModel isLightSelected