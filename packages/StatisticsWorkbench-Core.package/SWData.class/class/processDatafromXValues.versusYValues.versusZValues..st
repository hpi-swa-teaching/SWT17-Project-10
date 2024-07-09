instance creation
processDatafromXValues: xValues versusYValues: yValues versusZValues: zValues

	| data |
	data := self create.
	(1 to: xValues size)
		do: [:index | 
			data add: (SWVector fromArray:  (Array with: (xValues at: index) with: (yValues at: index) with: (zValues at: index)))].

	^ data
