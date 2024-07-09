as yet unclassified
testBuildingExample: aSWExample

	| window |
	window := aSWExample open.
	
	"Check if Window was opened"
	self assert: window notNil.
	"Close Window after test"
	(window) ifNotNil: [window delete]