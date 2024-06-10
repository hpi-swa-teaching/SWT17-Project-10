instance creation
createLineMorph
	
	^ PolygonMorph new
		color: self colorTheme spiderChartRasterColor;
		borderWidth: self class defaultLineBorderWith;
		borderColor: self colorTheme spiderChartAxisBorderColor;
		makeOpen;
		yourself