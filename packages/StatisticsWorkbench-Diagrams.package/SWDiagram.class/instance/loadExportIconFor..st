visualization
loadExportIconFor: aButton

	| icon |
	icon := ((GitAssetLoader for: 'StatisticsWorkbench') loadForm: 'export_icon.png').
	icon := icon scaledToHeight: 0.85 * aButton extent y.
	
	^ ImageMorph new image: icon