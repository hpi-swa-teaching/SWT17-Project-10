building
buildAdvancedChartsButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new 
		model: self;
		label: 'Advanced Charts';
		style: #menuButton;
		action: #onAdvancedChartButtonClicked;
		frame: (0.65@0.7 corner: 1@0.85);
		yourself