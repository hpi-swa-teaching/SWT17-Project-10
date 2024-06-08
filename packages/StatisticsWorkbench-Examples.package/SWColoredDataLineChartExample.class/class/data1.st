instance creation
data1

	| data |
	data := SWDataUnlabeled fromXValues: {13 . 14 . -9 . 20 . -15 . 2} versusYValues: {0 . 10 . -3 . 3 . 4 . -17}.
	data dataColor: Color orange.
	
	^ data