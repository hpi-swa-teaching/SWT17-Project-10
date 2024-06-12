as yet unclassified
open

	| dataCollection diagram|
	dataCollection := OrderedCollection new.
	dataCollection
		add: self data1;
		add: self data2;
		add: self data3.
		
	diagram := SWDiagram new.
	diagram stacked: true.
		
	^ (diagram visualizeAll: dataCollection with: SWAreaChart) openInWindow