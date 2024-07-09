adjusting
markerCount
	
	| count |
	count := self valueRange / self stepInterval.
	(count = count floor)
		ifTrue: [^ count - 1].

	^ count floor