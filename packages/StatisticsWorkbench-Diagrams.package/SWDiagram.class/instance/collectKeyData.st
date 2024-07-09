accessing
collectKeyData 

	| keyInformationCollection flattenedCollection |
	flattenedCollection := OrderedCollection new.
	keyInformationCollection := self charts collect: [:chart | chart keyInformation].
	keyInformationCollection do: [:keyInformation | flattenedCollection addAll: keyInformation].
	
	^ flattenedCollection