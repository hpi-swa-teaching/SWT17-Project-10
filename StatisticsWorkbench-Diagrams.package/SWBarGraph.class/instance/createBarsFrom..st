as yet unclassified
createBarsFrom: aSWData
	
	| xOfBar height |
	
	self flag: #fishy.
	
	aSWData do: [:vector |
		xOfBar := self barPositionFor: vector x.
		height := self barBottom - (self coordinateSystem positionFor: 0 @ vector y) y.
		self add:
			(SWBar new
						width: self barWidth;
						position: (xOfBar - self barWidth) @ (self barBottom - height);
						height: height;
						date: vector;
						caption: vector x asString; 
						bottom: self barBottom)
		]