as yet unclassified
newFromXValues: xValues andYValues: yValues 

	^ SWLinearRegression new 
		 initializeFromXValues: xValues andYValues: yValues;
		 yourself