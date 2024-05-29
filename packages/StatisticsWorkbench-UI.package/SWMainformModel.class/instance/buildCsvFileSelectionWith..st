building
buildCsvFileSelectionWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Choose CSV-File';
		action: #openFileChooser;
		frame: (0@0 corner: 1@0.15);
		yourself
	
	