as yet unclassified
setUp

	| data1 data2 data3 dataCollection|
	
	data1 := SWDataUnlabeled fromDataPointCollections: #(#(1 3) #(2 2) #(3 3) #(4 2) #(5 3)).
	data2 := SWDataUnlabeled fromDataPointCollections: #(#(1 4) #(2 1) #(3 2) #(4 4) #(5 1)).
	data3 := SWDataUnlabeled fromDataPointCollections: #(#(1 1) #(2 2) #(3 1) #(4 2) #(5 1)).
	
	dataCollection := OrderedCollection new.
	dataCollection
		add: data1;
		add: data2;
		add: data3.
		
	self diagram: SWDiagram new.
	self configureDiagram.
		
	self dataCollection: dataCollection;
		diagram: (self diagram visualizeAll: dataCollection with: SWAreaChart)