adding/removing
add: anObject

	(anObject className = 'SWPieKey')
		ifTrue: [^ anObject addTo2: self].
	anObject addTo: self