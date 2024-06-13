event handling
mouseEnter: anEvent
	
	| popup popupText |
	
	popupText := 'X: ' , (self round:(self vector x) to: 0.001) asString , String cr , 'Y: ' , (self round:(self vector y) to:0.01) asString, self suffix.
	(self vector hasZ) ifTrue: [popupText := popupText, String cr,   'Z: ', (self round:(self vector z) to:0.01) asString].
	popup := TextMorph new contents: popupText.
	popup center: self topCenter + (0 @ -20).
	self addMorph: popup.
	self infoPopup: popup