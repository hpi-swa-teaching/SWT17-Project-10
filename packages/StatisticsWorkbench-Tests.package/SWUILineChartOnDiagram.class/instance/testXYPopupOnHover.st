testing
testXYPopupOnHover

	| dataPoint |
	self diagram openInWorld: self world.
	dataPoint := self lineChart dataPoints at: 1.
	self hand handleEvent: (self mouseEnter: dataPoint center).
	
	self assert: dataPoint infoPopup notNil