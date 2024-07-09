accessing
maximum: aValue

	(aValue)
		ifNil: [SWInvalidArgumentError signal: 'New maximum must not be nil.'].

	(self minimum notNil and: [aValue <= self minimum])
		ifTrue: [SWInvalidArgumentError signal: 'Maximum must be larger than minimum.']
		ifFalse: [
			maximum := aValue.
			self update]
