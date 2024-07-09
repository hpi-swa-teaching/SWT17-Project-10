testing
testXYPopupOnHover

	| selectedBar |
	self diagram openInWorld: self world.
	selectedBar := self barChart bars detect: [:bar | bar vector x = 1 and: bar vector y = 3].
	self hand handleEvent: (self mouseEnter: selectedBar center).
	
	self assert: selectedBar infoPopup notNil