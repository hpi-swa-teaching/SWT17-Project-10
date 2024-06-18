testing
testNumberOfDimensions

	self assert: self data dimensionNames equals: self spiderChart dimensionNames.
	self assert: self spiderChart dimensions equals: self diagram coordinateSystem dimensions