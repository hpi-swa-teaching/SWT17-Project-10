accessing
asString

	| outputString |
	outputString := ''.
	self dimensionNames do: [:each | 
		outputString := outputString, each, '|'].
	outputString := outputString allButLast, Character cr.
	
	self do: [:each | 
		each do: [:item | outputString := outputString, item asString, '|'].
		outputString := outputString allButLast, Character cr].

	^ outputString
