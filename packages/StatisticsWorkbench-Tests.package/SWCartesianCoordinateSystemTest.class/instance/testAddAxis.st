testing
testAddAxis

	| xAxis |
	xAxis := SWAxis create.
	self coordinateSystem addAxis: xAxis dimension: #x.
	self assert: xAxis equals: self coordinateSystem xAxis
