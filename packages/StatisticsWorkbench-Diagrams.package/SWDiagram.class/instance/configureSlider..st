accessing
configureSlider: aSliderMorph

	aSliderMorph
		extent: (100 @ 500);
		position: ((self position x - 150)@(self  position y));
		orientation: #vertical;
		minVal: (self globalMinimum: #z);
		maxVal: (self globalMaximum: #z);
		setValue: 1