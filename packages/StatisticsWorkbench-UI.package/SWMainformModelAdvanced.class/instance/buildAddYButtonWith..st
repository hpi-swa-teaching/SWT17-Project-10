building
buildAddYButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new 
		model: self;
		label: 'Add new Y-Axis values';
		action: #onXAxisButtonClick;
		frame: (0.3@0.70 corner: 0.65@0.85);
		yourself