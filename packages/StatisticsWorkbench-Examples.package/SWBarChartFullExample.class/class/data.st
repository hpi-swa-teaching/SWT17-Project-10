instance creation
data

	| data |
	data := SWDataLabeled fromXValues: {1 . 2 . 3 . 4 . 5} versusYValues: {7 . 10 . 3 . 3 . 4}.
	data setLabels: {'Apolda' . 'Jena' . 'Weimar' . 'Erfurt' . 'Suhl'}.
	
	^ data