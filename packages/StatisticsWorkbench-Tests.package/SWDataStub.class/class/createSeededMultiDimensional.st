helper
createSeededMultiDimensional
	"Don't change! Multiple unit tests relying on that data."

	| data |
	
	data := SWDataLabeled fromYValues: {100 . 80 . 90. 35 . 70}.
	data
		dataName: 'Spider-Man';
		dimensionNames: {'skill' . 'weight' . 'height' . 'charisma'. 'stamina'}.
	
	^ data