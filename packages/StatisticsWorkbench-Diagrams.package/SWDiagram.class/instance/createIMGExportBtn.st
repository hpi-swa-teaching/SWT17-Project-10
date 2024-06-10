visualization
createIMGExportBtn

	| button icon |
	button := SimpleButtonMorph new.
	button
		label: '';
		color: Color white;
		extent: 45 @ 35;
		target: self;
		actionSelector: #exportIMG;
		position: self position;
		cornerStyle: #rounded;
		borderWidth: 3;
		borderColor: Color black.
	icon := self loadExportIconFor: button.
	button addMorph: icon.
	icon position: button position + (button extent - icon extent // 2).
	self 
		buttonHighlighting: button;
		exportButton: button;
		addMorph: button.