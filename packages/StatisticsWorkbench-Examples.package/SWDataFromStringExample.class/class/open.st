instance creation
open

	| data |	
	data := SWDataLabeled fromString: self dataString ofDataDimension: 2.
	
	^ (SWDiagram new visualize: data with: SWBarChart) openInWindow
