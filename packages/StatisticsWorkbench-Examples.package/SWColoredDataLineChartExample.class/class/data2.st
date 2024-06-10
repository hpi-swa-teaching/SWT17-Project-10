instance creation
data2

	| data |
	data := SWDataUnlabeled fromXValues: {-2 . -10 . 8 . -20 . -16 . 5} versusYValues: {0 . 10 . -3 . 3 . 4 . -17}.
	data dataColor: Color bubblegum.
	
	^ data