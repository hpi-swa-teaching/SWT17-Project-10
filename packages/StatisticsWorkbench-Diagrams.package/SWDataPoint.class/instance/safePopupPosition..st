event handling
safePopupPosition: aPopup

	| position |
	
	position := self topCenter.
	(self position y - owner position y < 100)
		ifTrue: [position := self bottomCenter + (0 @ 150)].
	(self position x - owner position x < 200)
		ifTrue: [position := position + (50@0)].
		

	^ position