initialize-release
initialize
	
	super initialize.
	self xAxis: self defaultXValue;
		yAxis: self defaultYValue;
		 namedColumns: self defaultColumns;
		 setYAxis: {'1, 2, 3, 4, 5'. '34, 46, 65, 23'. '47, 45, 11, 39, 94'};
		 chartSelection: self defaultDiagramsSelection;
		 yAxisSelection: self defaultYAxisSelection;
		 selectedTheme: self defaultTheme;
		parsedFile: ''
