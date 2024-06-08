instance creation
data

	| data |
	data := SWDataLabeled fromYValues: {100 . 80 . 90. 35 . 66}.
	data
		dataName: 'Spider-Man';
		dimensionNames: {'skill' . 'weight' . 'height' . 'charisma'. 'stamina'}.
		
	^ data