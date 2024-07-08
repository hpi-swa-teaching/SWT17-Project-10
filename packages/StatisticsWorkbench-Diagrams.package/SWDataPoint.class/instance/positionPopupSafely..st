event handling
positionPopupSafely: aPopup

	| clippingOnTop |	
	clippingOnTop := false.
	aPopup bottomRight: self topCenter.
	(aPopup position y < (owner position y))
				ifTrue: [
					aPopup topLeft: self bottomCenter.
					clippingOnTop := true].
	(aPopup topLeft x < (owner position x + 60))
		ifTrue: [
			(clippingOnTop)
				ifTrue: [aPopup topLeft: self bottomCenter.]
				ifFalse: [aPopup bottomLeft: self topCenter]]
