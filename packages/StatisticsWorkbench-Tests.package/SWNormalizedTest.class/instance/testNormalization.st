as yet unclassified
testNormalization

	| summedValues |
	summedValues := (Array new: 5) collect: [:a | 0].
	
	self assert: ((self diagram charts at: 3) data first y) equals: 37.5.
	self assert: ((self diagram charts at: 2) data first y) equals: 50.
	self assert: ((self diagram charts at: 1) data first y) equals: 12.5