testing
testCountingSort

	| expectedResult |
	expectedResult := Dictionary new.
	expectedResult at: 0 put: 1.
	expectedResult at: 1 put: 2.
	expectedResult at: 3 put: 1.
	
	self assert: expectedResult equals: (self data countingSort: 2)