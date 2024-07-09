instance creation
processDatafromXValues: xValues versusYValues: yValues 

	| data |
	data := self create.
	(1 to: xValues size)
		do: [:index | 
			data add: (SWVector fromPoint: (xValues at: index) @ (yValues at: index))].

	^ data
