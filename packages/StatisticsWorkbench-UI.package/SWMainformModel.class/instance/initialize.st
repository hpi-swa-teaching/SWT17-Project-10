initialize-release
initialize
	
	super initialize.
	self xAxis: self defaultXValue;
		yAxis: self defaultYValue;
		namedColumns: self defaultColumns;
		chartSelection: self defaultDiagramsSelection;
		selectedTheme: self defaultTheme;
		parsedFile: ''
