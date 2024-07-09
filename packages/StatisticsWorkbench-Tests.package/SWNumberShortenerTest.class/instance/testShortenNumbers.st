testing
testShortenNumbers

	| expected inputs |
	inputs := Array
		with: 999
		with: 1234
		with: 25000
		with: 9873000000
		with: 987000000000000000000000
		with: 9870000000000000000000000.
	
	expected := Array
		with: '999'
		with: '1.2 K'
		with: '25.0 K'
		with: '9.8 B'
		with: '987.0 Sx'
		with: '9870000000000000000000000'.
		
	1 to: inputs size do: [:i | self assert: (self numberShortener shortenNumber: (inputs at: i)) equals: (expected at: i)]