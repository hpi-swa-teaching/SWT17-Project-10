as yet unclassified
open
	
	| dataCollection diagram |
	dataCollection := OrderedCollection new.
	dataCollection
		add: self data1;
		add: self data2;
		add: self data3.
		
	diagram := (SWDiagram new visualizeAll: dataCollection with: SWBubblePlot).
	diagram addSlider.

	^ diagram openInWindowLabeled: ''