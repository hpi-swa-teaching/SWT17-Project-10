visualization
updateHPILogo

	(self logo)
		ifNotNil: [self logo position: (self position + self extent) - self logo extent]