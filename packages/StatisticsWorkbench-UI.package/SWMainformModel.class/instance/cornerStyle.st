building
cornerStyle
	
	MenuMorph roundedMenuCorners = false
		ifTrue: [^ #menuButton]
		ifFalse: [^ #nil]