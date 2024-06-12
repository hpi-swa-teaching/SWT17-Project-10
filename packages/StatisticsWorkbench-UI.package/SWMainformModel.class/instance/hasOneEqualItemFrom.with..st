event-handling
hasOneEqualItemFrom: aCollection1 with: aCollection2

	aCollection1 do: [:each | (aCollection2 includes: each) ifTrue: [^true]].
	^ false.