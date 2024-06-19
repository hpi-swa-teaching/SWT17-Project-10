instance creation
createCircular: aSWVector at: aRenderedPoint size: aSize

	^ SWDataPoint new 
				vector: aSWVector;
				renderedPoint: aRenderedPoint;
				width: aSize;
				height: aSize;
				cornerRadius: (aSize / 2);
				color: self defaultColor;
				borderColor: self defaultColor;
				suffix: '';
				yourself
