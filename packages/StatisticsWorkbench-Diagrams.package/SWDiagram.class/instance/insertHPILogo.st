visualization
insertHPILogo

	| image imageMorph |
	image := ((GitAssetLoader for: 'StatisticsWorkbench') loadForm: 'hpi_logo.png') scaledToHeight: 38.
	imageMorph := ImageMorph new image: image.
	imageMorph position: (self position + self extent) - imageMorph extent.
	self logo: imageMorph.
	self addMorph: imageMorph.