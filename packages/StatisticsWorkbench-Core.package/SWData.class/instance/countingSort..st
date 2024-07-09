private statistics
countingSort: aDimension

	| buckets values |
	values := self selectDimension: aDimension.
	buckets := Dictionary new.
	values asSet do: [:each | buckets at: each put: (values occurrencesOf: each)].

	^ buckets
