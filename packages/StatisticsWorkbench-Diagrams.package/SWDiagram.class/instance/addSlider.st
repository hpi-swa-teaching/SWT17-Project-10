accessing
addSlider

	| sliderMorph valueMorph|
	
	sliderMorph := SimpleSliderMorph new.
	valueMorph := TextMorph new.
	self addMorph: sliderMorph.
	self addMorph: valueMorph.
	
	sliderMorph
		extent: (100 @ 500);
		position: ((self position x - 150)@(self  position y));
		orientation: #vertical;
		minVal: (self globalMinimum: #z);
		maxVal: (self globalMaximum: #z);
		setValue: 1.
		
	valueMorph
		extent: (20@50);
		backgroundColor: Color white;
		position: ((self position x - 150)@(self  position y + (sliderMorph height)));
		contents: (Text fromString: 'haloo').
	
	self sliderValueMorph: valueMorph.
	self sliderMorph: sliderMorph.
	
	self sendToCharts: sliderMorph getNumericValue.
		
	sliderMorph target: self.
	sliderMorph arguments: OrderedCollection new.
	sliderMorph actionSelector: #sendToCharts: