visualization
applyColorTheme: aColorTheme

	self colorTheme: aColorTheme.
	(aColorTheme class hasHPILogo)
		ifTrue: [self insertHPILogo].
	self color: aColorTheme class backgroundColor.
	self updateColors.
	self updateCharts
