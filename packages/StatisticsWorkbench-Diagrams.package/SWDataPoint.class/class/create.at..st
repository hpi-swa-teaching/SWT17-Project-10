instance creation
create: aSWVector at: aRenderedPoint

	^ SWDataPoint new 
				vector: aSWVector;
				renderedPoint: aRenderedPoint;
				width: self defaultWidth;
				height: self defaultHeight;
				color: self defaultColor;
				borderColor: self defaultColor;
				suffix: '';
				yourself
