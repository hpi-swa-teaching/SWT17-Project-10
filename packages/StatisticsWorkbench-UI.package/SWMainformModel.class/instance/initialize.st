initialize-release
initialize
	
	super initialize.
	self xAxis: self defaultXValue;
		yAxis: self defaultYValue;
		 namedColumns: self defaultColumns;
		 setYAxis: {'11, 12, 13, 14, 15'. '21, 22, 23, 24, 25'. '31, 32, 33, 34, 35'};
		 chartSelection: self defaultDiagramsSelection;
		 yAxisSelection: self defaultYAxisSelection;
		 selectedTheme: self defaultTheme
