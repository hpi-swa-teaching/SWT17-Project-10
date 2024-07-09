testing
testCheckYValidity

	self mainformModel parseYData.
	
	self assert: true equals: self mainformModel checkYValidity.
	self mainformModel parsedYData add: #(1 2 3).
	self assert: false equals: self mainformModel checkYValidity.
	self mainformModel parsedYData removeLast.
	self assert: true equals: self mainformModel checkYValidity