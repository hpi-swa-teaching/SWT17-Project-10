event-handling
parseYData

	| yDataCollection |
	yDataCollection := OrderedCollection new.
	self yAxis do: [:each | yDataCollection add: (self splitStringAndConvertToNumbers: each)].
	self parsedYData: yDataCollection.
	