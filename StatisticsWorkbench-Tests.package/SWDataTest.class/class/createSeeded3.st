as yet unclassified
createSeeded3
	|tempData|
	
	"Don't change! Multiple unit tests relying on that data."  
	
	tempData := SWDataUnlabeled create     
		add: #(0 1);
		add: #(1 1);
		add: #(2 3); 
		add: #(3 1);
		yourself.
		
	tempData setAllDimensionNames: #('Time' 'Value').
	
	^ tempData