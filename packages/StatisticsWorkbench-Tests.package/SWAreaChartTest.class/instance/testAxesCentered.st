testing
testAxesCentered

	| center slackX slackY offsetX offsetY |
	
	slackX := 5/100 * self diagram width.
	slackY := 5/100 * self diagram height.
	
	center := self diagram coordinateSystem center.
	offsetY := (self diagram coordinateSystem xAxis startPoint y - center y) abs.
	offsetX := (self diagram coordinateSystem yAxis startPoint x - center x) abs.
	
	self assert: [offsetY < slackY].
	self assert: [offsetX < slackX]
