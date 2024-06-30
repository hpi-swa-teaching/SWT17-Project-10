event-handling
showYAxisPopup
	
	| yValues |
	
	yValues := UIManager default request: 'Enter your y-Axis values (separated by ",")' initialAnswer: '32, 44, 65, 45, 3'.
	self addYAxisValues: yValues