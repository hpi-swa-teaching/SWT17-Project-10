as yet unclassified
testXYPopupOnHover

	| selectedBubble |
	self diagram openInWorld: self world.
	selectedBubble := self bubblePlot dataPoints detect: [:bubble | bubble vector x = 1 and: bubble vector y = 210].
	self hand handleEvent: (self mouseEnter: selectedBubble center).
	self assert: selectedBubble infoPopup notNil.
	self assert: selectedBubble infoPopup position y > bubblePlot position y.
	self assert: selectedBubble infoPopup position x > bubblePlot position x.
	