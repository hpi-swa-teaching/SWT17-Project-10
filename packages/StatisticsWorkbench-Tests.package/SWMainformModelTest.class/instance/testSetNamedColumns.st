as yet unclassified
testSetNamedColumns

	self mainformModel setNamedColumns: 'Anna, Beta, Gamma'.
	self assert: self mainformModel namedColumns = 'Anna, Beta, Gamma'.
	