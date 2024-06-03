as yet unclassified
createLineMorph
	
	^ PolygonMorph new
						color: (Color r: 0 g: (Random new next) b: 255);
						borderWidth: self class defaultBorderWidth;
						borderColor: self class defaultBorderColor;
						yourself
