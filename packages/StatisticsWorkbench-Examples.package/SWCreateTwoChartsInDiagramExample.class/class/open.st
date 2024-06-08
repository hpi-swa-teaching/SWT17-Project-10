instance creation
open

	^ (SWDiagram new visualize: self data with: SWLineChart and: SWBarChart) openInWindow
