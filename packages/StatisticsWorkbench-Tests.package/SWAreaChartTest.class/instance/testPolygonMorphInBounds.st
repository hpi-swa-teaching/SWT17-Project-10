testing
testPolygonMorphInBounds

	self assert: [self diagram coordinateSystem bounds origin <= self areaChart lineMorph bounds origin].
	self assert: [self diagram coordinateSystem bounds corner >= self areaChart lineMorph bounds corner]
