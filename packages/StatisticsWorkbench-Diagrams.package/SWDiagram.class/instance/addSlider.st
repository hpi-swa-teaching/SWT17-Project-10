accessing
addSlider

	| sliderMorph valueMorph|
	
	sliderMorph := SimpleSliderMorph new.
	valueMorph := TextMorph new.
	self addMorph: sliderMorph.
	self addMorph: valueMorph.
	self configureSlider: sliderMorph.
	valueMorph
		extent: (20@50);
		backgroundColor: Color white;
		position: ((self position x - 150)@(self  position y + (sliderMorph height)));
		contents: (Text fromString: 'haloo').
	self
		sliderValueMorph: valueMorph;
		sliderMorph: sliderMorph;
		sendToCharts: sliderMorph getNumericValue.
	sliderMorph
		target: self;
		actionSelector: #sendToCharts:;
		arguments: OrderedCollection new