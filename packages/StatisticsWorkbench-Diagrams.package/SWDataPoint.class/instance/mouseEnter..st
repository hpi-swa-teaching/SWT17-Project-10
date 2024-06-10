event handling
mouseEnter: anEvent
	
	| popup popupText |
	
	popupText := 'X: ' , (self vector x asFloat printShowingDecimalPlaces: 2) asString , String cr , 'Y: ' , (self vector y asFloat printShowingDecimalPlaces: 2) asString, self suffix.
	popup := TextMorph new contents: popupText.
	popup center: self topCenter + (0 @ -20).
	self addMorph: popup.
	self infoPopup: popup