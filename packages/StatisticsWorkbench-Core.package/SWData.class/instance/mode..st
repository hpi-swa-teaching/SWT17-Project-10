math functions
mode: aDimension

	| occurrences result |
	occurrences := Dictionary new.
	occurrences := self countingSort: aDimension.
	result := (occurrences select: [:each | each = occurrences values max]) keys.
	(result size = self size)
		ifTrue: [^ #noMode].

	^ result
