reading
namedColumnsFromMatrix: aMatrix 
	
	| namedColumns |
	namedColumns := Dictionary new.
	(1 to: aMatrix columnCount)
		do: [:i | 
			| column |
			column := (aMatrix atColumn: i) asOrderedCollection.
			namedColumns at: column removeFirst asSymbol put: column].

	^ namedColumns