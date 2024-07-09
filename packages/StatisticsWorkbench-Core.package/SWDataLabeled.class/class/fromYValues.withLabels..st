instance creation
fromYValues: yValues withLabels: labels

	| xValues |
	xValues := (1 to: yValues size) asOrderedCollection.

	^ self fromXValues: xValues versusYValues: yValues withLabels: labels
