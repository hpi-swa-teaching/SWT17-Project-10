instance creation
data

	| data |
	data := SWDataLabeled fromYValues: {22 . 110 . 64 . 211 . 35} 
		withLabels: {'Apolda' . 'Jena' . 'Weimar' . 'Erfurt' . 'Suhl'}.
	data setAllDimensionNames: #('City' 'PopulationInThousands').
	
	^ data