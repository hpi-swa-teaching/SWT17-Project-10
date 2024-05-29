creation
createLineMorph
	
	^ PolygonMorph new
						color: self defaultColor;
						borderWidth: self class defaultBorderWidth;
						borderColor: self class defaultBorderColor;
						makeOpen;
						yourself
