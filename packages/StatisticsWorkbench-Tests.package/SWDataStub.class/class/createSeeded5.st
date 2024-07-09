helper
createSeeded5
	"Don't change! Multiple unit tests relying on that data."
	
	| tempData |
	tempData := SWDataUnlabeled create     
		add: #(1 5);
		add: #(2 10);
		add: #(3 30); 
		add: #(4 100);
		yourself.
	tempData setAllDimensionNames: #('Time' 'Value').
	
	^ tempData
