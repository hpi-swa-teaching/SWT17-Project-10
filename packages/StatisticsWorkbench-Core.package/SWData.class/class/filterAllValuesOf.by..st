categorized-data
filterAllValuesOf: aDictionary by: indizes 

	| copy |
	copy := aDictionary deepCopy.
	copy
		valuesDo: [:columnValues | columnValues
			setContents: (self getValues: columnValues of: indizes)].
	^ copy