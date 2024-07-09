creation
createBarsFrom: aSWData

	| xOfBar height bar |
	
	aSWData doWithIndex: [:vector :index |
		xOfBar := self barPositionFor: vector x.
		height := self barBottom - (self coordinateSystem positionFor: (0 @ vector y)) y.
		bar := (SWBar new
						width: self barWidth;
						position: ((xOfBar - self barWidth) @ (self barBottom - height));
						height: height;
						vector: vector;
						color: self barColor;
						captionColor: self barLabelColor;
						yourself).
		((self data at: index) y = 0) 
			ifFalse: [(self diagram stacked) 
				ifTrue: [bar caption: vector labelName.]
				ifFalse: [bar bottomCaption: vector labelName.]].
		self add: bar]
