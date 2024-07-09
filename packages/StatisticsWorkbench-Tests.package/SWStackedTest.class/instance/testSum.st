as yet unclassified
testSum

	| summedValues |
	summedValues := (Array new: 5) collect: [:a | 0].
	
	self assert: ((self diagram charts at: 3) data collect: [:vector | vector y]) equals: #(3 2 3 2 3) asOrderedCollection.
	self assert: ((self diagram charts at: 2) data collect: [:vector | vector y]) equals: #(7 3 5 6 4) asOrderedCollection.
	self assert: ((self diagram charts at: 1) data collect: [:vector | vector y]) equals: #(8 5 6 8 5) asOrderedCollection