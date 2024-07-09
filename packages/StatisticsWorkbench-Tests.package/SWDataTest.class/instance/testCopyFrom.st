testing
testCopyFrom

	| copy |
	copy := SWDataUnlabeled new.
	copy copyFrom: self data.
	
	self assert: self data equals: copy