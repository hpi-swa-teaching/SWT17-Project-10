helper
createSeededWithTwoCategories
	"Don't change! Multiple unit tests relying on that data."
	
	| tempData |
	tempData := SWDataLabeled create     
		add: #(1 1 'A');
		add: #(2 1 'A');
		add: #(3 3 'B'); 
		add: #(4 1 'A');
		yourself.
	tempData setAllDimensionNames: #('Time' 'Value').
	tempData setLabels: {'one' . 'two' . 'three' . 'four'}.
	
	^ tempData