as yet unclassified
open

	| dataCollection|
	dataCollection := OrderedCollection new.
	dataCollection
		add: self data1;
		add: self data2;
		add: self data3.
		
	^ (SWDiagram new visualizeStacked: dataCollection with: SWBarChart) openInWindowLabeled: ''