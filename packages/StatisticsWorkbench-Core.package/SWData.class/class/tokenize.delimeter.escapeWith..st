CSV parsing
tokenize: lines delimeter: delimeterChar escapeWith: escapeChar

	| tokenizedRows matrix |
	tokenizedRows := lines collect: [:line | line findTokens: delimeterChar escapedBy: escapeChar].
	matrix := Matrix rows: tokenizedRows size columns: tokenizedRows first size contents: tokenizedRows flatten.
	
	^ matrix
