building
buildExportPNGButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new 
		model: self;
		label: 'Export Image';
		action: #onExportImageButtonClicked;
		frame: (0.3@0.70 corner: 0.65@0.85);
		yourself