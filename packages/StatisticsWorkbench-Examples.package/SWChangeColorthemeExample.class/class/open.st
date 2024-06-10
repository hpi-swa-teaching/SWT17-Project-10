instance creation
open 
	
	| diagram |
	diagram := SWDiagram new visualize: self data with: SWLineChart.
	diagram applyColorTheme: SWDarkTheme new.
	
	^ diagram
