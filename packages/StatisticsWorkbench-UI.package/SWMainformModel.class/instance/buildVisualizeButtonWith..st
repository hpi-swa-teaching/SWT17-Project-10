building
buildVisualizeButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new 
		model: self;
		label: 'Visualize!';
		style: self cornerStyle;
		action: #onVisualizeButtonClicked;
		frame: (0.3 @ 0.85 corner: 1 @ 1);
		yourself.