building
buildVisualizeButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new 
		model: self;
		label: 'Visualize!';
		style: #menuButton;
		action: #onVisualizeButtonClicked;
		frame: (0.0@0.85 corner: 1@1);
		yourself.