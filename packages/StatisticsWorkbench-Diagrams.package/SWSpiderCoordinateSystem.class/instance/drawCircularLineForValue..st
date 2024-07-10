visualization
drawCircularLineForValue: aNumber

	| lineMorph vertices |
	lineMorph := self createLineMorph.
	vertices := (0 to: self dimensions) collect: [:dim |
		self circlePositionAtDimension: dim forValue: aNumber].
	lineMorph setVertices: vertices asArray.
	self spiderNet addMorph: lineMorph