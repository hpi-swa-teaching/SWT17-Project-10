building
buildCsvFileSelectionWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Import';
		style: #menuButton;
		action: #openFileChooser;
		frame: (0@0 corner: 0.5@0.15);
		yourself
	
	