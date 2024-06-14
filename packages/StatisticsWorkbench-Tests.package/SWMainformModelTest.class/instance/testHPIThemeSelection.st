as yet unclassified
testHPIThemeSelection
	self mainformModel updateTheme: SWHPITheme.
	self assert: self mainformModel selectedTheme = SWHPITheme.
	self assert: self mainformModel isHPISelected