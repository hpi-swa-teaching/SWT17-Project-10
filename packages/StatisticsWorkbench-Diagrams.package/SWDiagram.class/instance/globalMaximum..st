adding/removing
globalMaximum: aDimension

	|chartMaxima|
	
	chartMaxima := charts collect: [:aChart | aChart data maximum: aDimension].
	
	^chartMaxima max