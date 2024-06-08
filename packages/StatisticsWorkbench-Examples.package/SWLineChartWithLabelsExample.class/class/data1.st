instance creation
data1

	| data |
	data := SWDataUnlabeled fromYValues: { 900  . 1212 . 1493 . 1212 . 700 }.
	data dataName: 'Feldberg in Deutschland'.
	
	^ data