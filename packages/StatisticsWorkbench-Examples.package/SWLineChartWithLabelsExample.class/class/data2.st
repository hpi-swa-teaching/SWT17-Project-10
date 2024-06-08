instance creation
data2

	| data |
	data := SWDataUnlabeled fromYValues: { 4000 . 8848 . 6500 . 5000 . 4000 . 3100 }.
	data dataName: 'Mount Everest in Nepal'.
	
	^ data