instance creation
data

	| data |
	data := SWDataUnlabeled fromYValues: {22 . 110 . 64 . 211 . 35}.   
	data setAllDimensionNames: #('City' 'PopulationInThousands').
	
	^ data