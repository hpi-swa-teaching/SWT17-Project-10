instance creation
open
	
	| dataCollection |
	dataCollection := OrderedCollection new.
	dataCollection
		add: self data1;
		add: self data2.

	^ (SWDiagram new visualizeAll: dataCollection with: SWLineChart) openInWindowLabeled: ''
