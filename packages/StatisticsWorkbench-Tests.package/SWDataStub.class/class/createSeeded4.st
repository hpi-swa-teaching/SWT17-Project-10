helper
createSeeded4
	"Don't change! Multiple unit tests relying on that data."
	
	| tempData |
	tempData := SWDataLabeled create     
		add: #(0 1);
		add: #(1 1);
		add: #(2 3); 
		add: #(3 1);
		yourself.
	tempData setAllDimensionNames: #('Time' 'Value').
	tempData setLabels: {'one' . 'two' . 'three' . 'four'}.
	
	^ tempData