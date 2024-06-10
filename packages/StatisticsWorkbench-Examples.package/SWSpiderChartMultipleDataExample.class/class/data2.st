instance creation
data2

	| data |
	data := SWDataLabeled fromYValues: {30. 99. 100. 0 .13}.
	data dataName: 'Hulk'.
	
	^ data