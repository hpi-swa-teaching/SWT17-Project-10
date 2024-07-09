testing
testSplitStringAndConvertToNumbers

	| numbers |
	numbers := self mainformModel splitStringAndConvertToNumbers: '1,2,3'.
	self assert: numbers = (OrderedCollection with: 1 with: 2 with: 3)