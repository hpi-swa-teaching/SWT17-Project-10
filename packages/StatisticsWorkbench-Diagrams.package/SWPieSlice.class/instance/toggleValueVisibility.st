updating
toggleValueVisibility

	(self label color = Color transparent)
	ifFalse: [ self label color: Color transparent]
	ifTrue: [ self label color: Color black].
