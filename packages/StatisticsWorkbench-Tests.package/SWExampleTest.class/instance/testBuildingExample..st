as yet unclassified
testBuildingExample: aSWExample

	| window |

	window := aSWExample open.
	
	"Check if Window was opened"
	self assert: (window notNil) description: 'Der Wert sollte 10 sein, ist aber '.
	
	"Close Window after test"
	(window) ifNotNil: [window delete].