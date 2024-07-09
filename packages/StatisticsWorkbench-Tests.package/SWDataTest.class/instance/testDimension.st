testing
testDimension

	| data1D data2D data3D data5D |
	data1D := SWData create
					add: #(1);
					add: #(2);
					add: #(3);
					yourself.			
	self assert: 1 equals: data1D dimensions.
	
	data2D := self data.
	self assert: 2 equals: data2D dimensions.
	
	data3D := SWData create
					add: #(1 2 3);
					add: #(3 2 1);
					add: #(3 3 3);
					yourself.
	self assert: 3 equals: data3D dimensions.
	
	data5D := SWData create
					add: #(1 2 3 4 5);
					yourself.
	self assert: 5 equals: data5D dimensions.
	
	self should: [SWData create
						add: #(1 2);
						add: #(3 4);
						add: #(5 6 7);
						yourself] raise: SWInvalidDimensionError.
		
	self should: [SWData create add: #()] raise: SWInvalidDimensionError