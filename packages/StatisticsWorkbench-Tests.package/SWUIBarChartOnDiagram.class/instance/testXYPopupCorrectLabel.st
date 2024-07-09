testing
testXYPopupCorrectLabel

	| selectedBar |
	self diagram openInWorld: self world.
	selectedBar := self barChart bars detect: [:bar | bar vector x = 1 and: bar vector y = 3].
	self hand handleEvent: (self mouseEnter: selectedBar center).
	
	self assert: selectedBar infoPopup text equals: 'X: 1', String cr , 'Y: 3'