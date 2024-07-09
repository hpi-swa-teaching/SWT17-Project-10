instance creation
fromYValues: yValues

	| xValues |
	xValues := (1 to: yValues size) asOrderedCollection.

	^ self fromXValues: xValues versusYValues: yValues
