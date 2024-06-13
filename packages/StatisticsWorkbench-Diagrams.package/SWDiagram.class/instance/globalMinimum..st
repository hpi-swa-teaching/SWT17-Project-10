adding/removing
globalMinimum: aDimension

	|chartMaxima|
	
	chartMaxima := charts collect: [:aChart | aChart data minimum: aDimension].
	
	^chartMaxima min