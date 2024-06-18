visualization
createIMGExportBtn

	| button icon |
	button := SimpleButtonMorph new.
	button
		label: '';
		color: Color lightBlue;
		extent: 145 @ 35;
		target: self;
		actionSelector: #exportIMG;
		position: self position + (60 @ -50);
		cornerStyle: #rounded;
		borderWidth: 3;
		borderColor: Color lightBlue.
	icon := self loadExportIconFor: button.
	button addMorph: icon.
	icon position: button position + (button extent - icon extent // 2).
	self 
		exportButton: button;
		addMorph: button.