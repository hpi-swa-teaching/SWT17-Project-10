building
buildExportPNGButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new 
		model: self;
		label: 'Export';
		style: self cornerStyle;
		action: #onExportImageButtonClicked;
		frame: (0.5 @ 0 corner: 1 @ 0.15);
		yourself