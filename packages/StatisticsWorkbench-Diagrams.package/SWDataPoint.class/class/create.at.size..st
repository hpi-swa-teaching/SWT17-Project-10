instance creation
create: aSWVector at: aRenderedPoint size: aSize

	^ SWDataPoint new 
				vector: aSWVector;
				renderedPoint: aRenderedPoint;
				width: aSize;
				height: aSize;
				color: self defaultColor;
				borderColor: self defaultColor;
				suffix: '';
				yourself
