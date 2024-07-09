testing
testPositionFor

	| point1 point2 |
	point1 := (0 @ 0).
	point2 := (100 @ 100).
	"This update of max values is normally done automatically, by the updateCoordinateSystem function of SWDiagram, when the dataset is set or changed."
	self coordinateSystem xAxis maximum: 100.
	self coordinateSystem yAxis maximum: 100.
	self assert: (100 @ 600) equals: (self coordinateSystem positionFor: point1).
	self assert: (500 @ 200) equals: (self coordinateSystem positionFor: point2)
