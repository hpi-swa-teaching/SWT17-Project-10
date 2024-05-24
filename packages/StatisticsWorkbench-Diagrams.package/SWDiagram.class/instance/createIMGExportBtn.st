visualization
createIMGExportBtn

	| button |
	button := SimpleButtonMorph new.
	button 
		label: 'IMG';
		target: self;
		actionSelector: #exportIMG;
		position: self position.
	self addMorph: button.