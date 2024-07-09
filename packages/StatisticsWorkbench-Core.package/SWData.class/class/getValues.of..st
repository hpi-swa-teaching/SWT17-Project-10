categorized-data
getValues: aCollection of: aIndexCollection

	| tempCollection |
	tempCollection := OrderedCollection new.
	aIndexCollection do: [:index | tempCollection add: (aCollection at: index)].

	^ tempCollection