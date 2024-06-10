updating
applyTheme: aColorTheme
	
	self graphColor: (self diagram getColor: aColorTheme class spiderChartAreaColors for: self);
		graphBorderColor: aColorTheme class spiderChartGraphBorderColor