as yet unclassified
testDarkThemeSelection
	self mainformModel updateTheme: SWDarkTheme.
	self assert: self mainformModel selectedTheme = SWDarkTheme.
	self assert: self mainformModel isDarkSelected