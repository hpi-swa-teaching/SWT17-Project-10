accessing
z

	(self hasZ) ifFalse: [SWInvalidDimensionError signal: 'Vector does not have a z dimension'].
		
	^ self third