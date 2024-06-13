event handling
mouseEnter: anEvent
	
	"| popup popupText |
	
	popupText := 'X: ' , (self round:(self vector x) to: 0.001) asString , String cr , 'Y: ' , (self round:(self vector y) to: 0.01) asString, self owner dataSuffix.
	popup := TextMorph new contents: popupText.
	popup center: self topCenter + (0 @ -20).
	self addMorph: popup.
	self infoPopup: popup"
	5+5