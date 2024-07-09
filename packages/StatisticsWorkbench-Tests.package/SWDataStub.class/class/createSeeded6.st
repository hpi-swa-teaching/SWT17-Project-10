helper
createSeeded6
	"Don't change! Multiple unit tests relying on that data."
	
	| tempData |
	tempData := SWDataLabeled create     
		add: #(1 1);
		add: #(2 1);
		add: #(3 3); 
		add: #(4 1);
		yourself.
	tempData setAllDimensionNames: #('Time' 'Value').
	tempData setLabels: {'one' . 'two' . 'three' . 'four'}.
	
	^ tempData
