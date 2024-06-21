testing
testSetNamedColumns

	self mainformModel setNamedColumns: 'Anna, Beta, Gamma'.
	self assert: self mainformModel namedColumns = 'Anna, Beta, Gamma'.
	