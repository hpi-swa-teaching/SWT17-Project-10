testing
testSplitStringAndConvertToString

	| numbers |
	numbers := self mainformModel splitStringAndConvertToStrings:  'Anna, Beta, Gamma'.
	self assert: numbers = (OrderedCollection with: 'Anna' with: 'Beta' with: 'Gamma').