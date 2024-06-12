as yet unclassified
open

	| data1 data2 data3 dataCollection diagram|
	
	data1 := SWDataUnlabeled fromDataPointCollections: #(#(0 2) #(1 3) #(2 2) #(3 3) #(4 2) #(5 3)).
	data2 := SWDataUnlabeled fromDataPointCollections: #(#(0 3) #(1 4) #(2 1) #(3 2) #(4 4) #(5 1)).
	data3 := SWDataUnlabeled fromDataPointCollections: #(#(0 6) #(1 1) #(2 2) #(3 1) #(4 2) #(5 1)).
	
	
	dataCollection := OrderedCollection new.
	dataCollection
		add: data1;
		add: data2;
		add: data3.
		
	diagram := SWDiagram new.
	diagram
		stacked: true;
		normalized: true.
		
	^ (diagram visualizeAll: dataCollection with: SWAreaChart) openInWindow